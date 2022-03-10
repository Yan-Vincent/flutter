import 'package:get/get.dart';
import '../view/app/home.dart';
import '../state/states.dart';
import '../state/account.dart';

class AppRoute {
  static const String home = '/appHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: () => const AppHome(),
      binding: BindingsBuilder(() {
        Get.lazyPut<States>(() => States());
        Get.lazyPut<AccountState>(() => AccountState());
      }),
    );
  }
}
