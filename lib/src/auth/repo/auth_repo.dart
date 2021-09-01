import 'dart:developer';

import 'package:chat_app/src/auth/models/chatty_user/chattyUser.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  late CollectionReference<ChattyUser> usersRef;

  AuthRepo() {
    initReferences();
  }

  void initReferences() {
    usersRef = _firestore.collection('users').withConverter<ChattyUser>(
        fromFirestore: (snapshot, _) {
      return ChattyUser.fromJson(snapshot.data()!);
    }, toFirestore: (currentUser, _) {
      return currentUser.toJson();
    });
  }

  Future<ChattyUser?> signUpAndtoFirestore(
      ChattyUser user, String password) async {
    final firebaseUser = await registerUser(user.email, password);
    if (firebaseUser != null) {
      try {
        user = user.copyWith(uid: firebaseUser.uid);

        await usersRef.doc(firebaseUser.uid).set(user);

        return user;
      } on FirebaseException catch (error, stacktrace) {
        log('There was an error while signing up: $error',
            name: 'SignUpAndToFirestore', stackTrace: stacktrace);
        return null;
      }
    } else {
      return null;
    }
  }

  Future<User?> registerUser(String email, String password) async {
    try {
      final user = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      return user;
    } on FirebaseAuthException catch (error, stacktrace) {
      log('There was an error while signing up: $error',
          name: 'SignUp', stackTrace: stacktrace);

      return null;
    }
  }

  Future<ChattyUser?> signInWithEmailAndPassword(
      String email, String password) async {
    final firebaseUser = await signInWithFirebase(email, password);

    if (firebaseUser != null) {
      try {
        final chattyUser = (await usersRef.doc(firebaseUser.uid).get()).data()!;

        return chattyUser;
      } on FirebaseException catch (error, stacktrace) {
        throw 'Error while logging user: $error \n $stacktrace';
      }
    } else {
      return null;
    }
  }

  Future<User?> signInWithFirebase(String email, String password) async {
    try {
      return (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
    } on FirebaseAuthException catch (error, stacktrace) {
      log('There was an error while signing up: $error',
          name: 'SignUp', stackTrace: stacktrace);

      return null;
    }
  }

  Future<ChattyUser?> persistanceLogin() async {
    final user = _firebaseAuth.currentUser;

    if (user != null) {
      try {
        return (await usersRef.doc(user.uid).get()).data()!;
      } on FirebaseException catch (error, stacktrace) {
        throw 'There was an error while persistantly logging in: $error \n $stacktrace';
      }
    }
  }
}
