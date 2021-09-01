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
  }

  Future<void> signIn(String email, String password) async {
    this.currentUser = await repo.signInWithEmailAndPassword(email, password);
  }
}
