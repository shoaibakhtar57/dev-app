import 'package:chat_app/src/auth/controllers/authController.dart';
import 'package:chat_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: email),
              TextField(controller: password),
              SizedBox(height: 25),
              TextButton(
                onPressed: () {
                  Get.find<AuthController>().signIn(email.text, password.text);
                },
                child: Text('Sign IN'),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.sign_up);
                  },
                  child: Text('Go to sign up')),
            ],
          ),
        ),
      ),
    );
  }
}
