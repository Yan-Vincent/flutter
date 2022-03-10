import 'package:get/get.dart';
import '../view/account/home.dart';

class AccountRoute {
  static const String home = '/accountHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: () => const AccountHome(),
    );
  }
}
