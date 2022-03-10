import 'package:get/get.dart';
import '../view/error/home.dart';

class ErrorRoute {
  static const String home = '/errorHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: () => const ErrorHome(),
    );
  }
}
