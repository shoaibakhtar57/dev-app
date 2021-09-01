import 'package:chat_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(),
              TextField(),
              SizedBox(height: 25),
              TextButton(
                  onPressed: () {
                    //TODO: SIGNIN
                  },
                  child: Text('Sign IN')),
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
