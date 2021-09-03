import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late QuerySnapshot snapshot;
  Future<void> getDocumentsByQuery() async {
    this.snapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('numbers', isGreaterThanOrEqualTo: 20)
        .get();

    update();

    // final DocumentSnapshot doc = await FirebaseFirestore.instance
    //     .collection('users')
    //     .doc('aksdjflka')
    //     .get();

    // final docs = await FirebaseFirestore.instance
    //     .collection('users')
    //     .get(GetOptions(source: Source.serverAndCache));
  }
}
