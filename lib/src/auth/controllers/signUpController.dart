import 'package:chat_app/src/auth/controllers/authController.dart';
import 'package:chat_app/src/auth/controllers/builderIds.dart';
import 'package:chat_app/src/auth/models/chatty_user/chattyUser.dart';
import 'package:chat_app/src/auth/repo/auth_repo.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final repo = AuthRepo();

  final authController = Get.find<AuthController>();
  late ChattyUser newUser;

  late String newPassword;

  bool isLoading = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    newUser = ChattyUser(email: '', firstName: '', lastName: '', uid: '');
  }

  Future<void> signUpWithEmailAndPassword() async {
    isLoading = true;
    update([kSigningUp]);

    final user = await repo.signUpAndtoFirestore(newUser, newPassword);

    if (user != null) {
      authController.setCurrentUser(user);
    }
  }
}
