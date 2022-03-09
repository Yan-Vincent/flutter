import 'package:get/get.dart';
import './splash.dart';
import './app.dart';
import './account.dart';
import './user.dart';
import './error.dart';

class Routes {
  static final List<GetPage> pages = [
    SplashRoute.pages(),
    AppRoute.pages(),
    AccountRoute.pages(),
    UserRoute.pages(),
  ];

  static GetPage error() {
    return ErrorRoute.pages();
  }

  static String init() {
    return SplashRoute.home;
  }
}
