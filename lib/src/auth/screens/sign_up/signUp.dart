import 'package:chat_app/src/auth/controllers/signUpController.dart';
import 'package:chat_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final controller = Get.put(SignUpController());

  TextEditingController _emailCOntroller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailCOntroller,
              ),
              TextField(
                controller: _passwordController,
              ),
              SizedBox(height: 25),
              TextButton(
                  onPressed: () {
                    controller.newUser = controller.newUser
                        .copyWith(email: _emailCOntroller.text);
                    controller.newPassword = _passwordController.text;
                    Get.toNamed(Routes.name_taker);
                  },
                  child: Text('Next')),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Go back to sign in')),
            ],
          ),
        ),
      ),
    );
  }
}
