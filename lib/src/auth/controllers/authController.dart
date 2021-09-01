import 'dart:developer';

import 'package:chat_app/src/auth/controllers/builderIds.dart';
import 'package:chat_app/src/auth/models/chatty_user/chattyUser.dart';
import 'package:chat_app/src/auth/repo/auth_repo.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final repo = AuthRepo();
  ChattyUser? currentUser;

  void setCurrentUser(ChattyUser user) {
    this.currentUser = user;
    update([kRootAuthenticator]);
    while (Get.currentRoute != '/splash') {
      Get.back();
    }
  }

  Future<void> signIn(String email, String password) async {
    await repo.signInWithEmailAndPassword(email, password).then((value) {
      this.currentUser = value;
      update([kRootAuthenticator]);
    }).onError((error, stackTrace) {
      log('There was an internal server error');
    });
  }

  Future<void> persistanceLogin() async {
    await repo.persistanceLogin().then((value) {
      this.currentUser = value;
      update([kRootAuthenticator]);
    }).onError((error, stackTrace) {
      log('Error persistantly logging in: $error $stackTrace',
          name: 'Persistant Login');
    });
  }
}
