import 'package:chat_app/src/home/controllers/homeController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeModule extends GetWidget<HomeController> {
  HomeModule({Key? key}) : super(key: key);

  late QuerySnapshot snapshot;

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        initState: (state) async {
          controller.getDocumentsByQuery();
        },
        builder: (_) => Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: controller.snapshot.docs
                  .map((e) => Text(e['numbers'].toString()))
                  .toList()),
        ),
      ),
    );
  }
}
