import 'package:get/get.dart';
import '../view/splash/home.dart';

class SplashRoute {
  static const String home = '/splashHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: () => const SplashHome(),
    );
  }
}
