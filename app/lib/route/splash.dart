import 'package:get/get.dart';
import '../view/splash/home.dart';
import '../state/account.dart';
import '../state/user.dart';

class SplashRoute {
  static const String home = '/splashHome';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: ()=> const SplashHome(),
      bindings: [
        BindingsBuilder(() {
          Get.lazyPut<AccountState>(()=> AccountState());
          AccountState.to.createAccount();
        }),
        BindingsBuilder(() {
          Get.lazyPut<UserState>(()=> UserState());
          UserState.to.getUserList();
        }),
      ],
    );
  }
}
