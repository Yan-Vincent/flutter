import 'package:get/get.dart';
import '../view/app/home.dart';
import '../state/account.dart';
import '../state/user.dart';

class AppRoute {
  static const String home = '/appHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: ()=> const AppHome(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AccountState>(()=> AccountState());
        Get.lazyPut<UserState>(()=> UserState());
      }),
    );
  }
}
