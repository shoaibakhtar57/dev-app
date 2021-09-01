import 'package:chat_app/src/home/controllers/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeModule extends StatelessWidget {
  HomeModule({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
