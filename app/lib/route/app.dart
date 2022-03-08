import 'package:get/get.dart';
import '../view/app/home.dart';

class AppRoute {
  static const String home = '/appHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: ()=> const AppHome(),
    );
  }
}
