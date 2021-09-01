import 'package:chat_app/src/auth/controllers/authController.dart';
import 'package:chat_app/src/auth/controllers/builderIds.dart';
import 'package:chat_app/src/auth/screens/signIn.dart';
import 'package:chat_app/src/home/screens/module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      initState: (state) {
        controller.persistanceLogin();
      },
      id: kRootAuthenticator,
      builder: (con) => con.currentUser == null ? SignIn() : HomeModule(),
    );
  }
}
