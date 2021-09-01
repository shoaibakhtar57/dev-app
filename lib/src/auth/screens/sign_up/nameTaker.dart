import 'package:chat_app/src/auth/controllers/builderIds.dart';
import 'package:chat_app/src/auth/controllers/signUpController.dart';
import 'package:chat_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameTaker extends StatelessWidget {
  NameTaker({Key? key}) : super(key: key);

  final controller = Get.find<SignUpController>();

  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();

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
                controller: _firstName,
              ),
              TextField(
                controller: _lastName,
              ),
              SizedBox(height: 25),
              TextButton(
                  onPressed: () {
                    controller.newUser = controller.newUser.copyWith(
                        firstName: _firstName.text, lastName: _lastName.text);
                    controller.signUpWithEmailAndPassword();
                  },
                  child: Text('Sign Up')),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Previous')),
              GetBuilder<SignUpController>(
                  id: kSigningUp,
                  builder: (_) {
                    return controller.isLoading
                        ? CircularProgressIndicator()
                        : SizedBox();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
