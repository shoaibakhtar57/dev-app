import 'package:chat_app/src/auth/screens/signIn.dart';
import 'package:chat_app/src/auth/screens/sign_up/nameTaker.dart';
import 'package:chat_app/src/auth/screens/sign_up/signUp.dart';
import 'package:chat_app/src/auth/screens/splash.dart';
import 'package:get/get.dart';

class Routes {
  static const String sign_in = '/sign_in';
  static const String sign_up = '/sign_up';
  static const String name_taker = '/name_taker';
  static const String splash = '/splash';

  static final List<GetPage> getPages = [
    GetPage(name: sign_in, page: () => SignIn()),
    GetPage(name: sign_up, page: () => SignUp()),
    GetPage(name: name_taker, page: () => NameTaker()),
    GetPage(name: splash, page: () => Splash())
  ];
}
