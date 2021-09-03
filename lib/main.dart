import 'package:chat_app/src/auth/app/chatty.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // List<Map<String, dynamic>> dummyUsers = [
  //   {"firstName": 'Hello', "lastName": 'World', "email": "hell0@world.com"},
  //   {"firstName": 'asdf', "lastName": 'ksdlf', "email": "fda@asdfg.com"},
  //   {
  //     "firstName": 'skdfkl',
  //     "lastName": 'skjfl',
  //     "email": "nklnr@ksljflkje.com"
  //   },
  //   {
  //     "firstName": 'alkf3ksl',
  //     "lastName": 'aklsdjfklj3',
  //     "email": "lskjflksajdf@dsajflkj3lk.com"
  //   },
  //   {
  //     "firstName": 'bjcljblkj',
  //     "lastName": 'akj3lkjl',
  //     "email": "sjkjfal@world.com"
  //   },
  // ];
  // List<Map<String, dynamic>> chats = [
  //   {
  //     "chatId": 'fk3jl2jlk2j3flk',
  //     "name": 'fjakdsjfa',
  //     "lastUpdatedTime": DateTime.now(),
  //     "lastMessage": "Hello World",
  //   },
  //   {
  //     "chatId": 'fajsdkfjlk3j2lkjf3',
  //     "name": 'fjakdsjfa',
  //     "lastUpdatedTime": DateTime.now(),
  //     "lastMessage": "Hello World",
  //   },
  //   {
  //     "chatId": 'laksjdklfajsdlkfj2lkj3lk',
  //     "name": 'k2j3k1l2j3l1j2',
  //     "lastUpdatedTime": DateTime.now(),
  //     "lastMessage": "Hello World",
  //   },
  //   {
  //     "chatId": '23jk42j34lk1j2lk3j1lk',
  //     "name": 'k54jkl4j5lk1jl',
  //     "lastUpdatedTime": DateTime.now(),
  //     "lastMessage": "Hello World",
  //   },
  //   {
  //     "chatId": '21k3jlk12j3kl1j23l12j3l',
  //     "name": 'fjakdsjfa',
  //     "lastUpdatedTime": DateTime.now(),
  //     "lastMessage": "Hello World",
  //   },
  // ];
  // for (int i = 0; i < 5; i++) {
  //   final ref = FirebaseFirestore.instance.collection('users');
  //   final uid = ref.doc().id;

  //   final user = dummyUsers[i];

  //   await ref.doc(uid).set({...user, "uid": uid});
  // }

  // for (int i = 0; i < 5; i++) {
  //   final ref = FirebaseFirestore.instance.collection('chats');

  //   final uid = chats[i]['chatId'];

  //   await ref.doc(uid).set(chats[i]);
  // }
  runApp(Chatty());
}
