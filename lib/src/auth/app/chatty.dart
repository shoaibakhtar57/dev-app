import 'package:chat_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chatty extends StatelessWidget {
  const Chatty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes.getPages,
      initialRoute: Routes.sign_in,
    );
  }
}
