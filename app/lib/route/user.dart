import 'package:get/get.dart';
import '../view/user/home.dart';
import '../view/user/details.dart';
import '../state/user.dart';

class UserRoute {
  static const String home = '/userHome';
  static const String details = '/:id';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: () => const UserHome(),
      binding: BindingsBuilder(() {
        Get.lazyPut<UserState>(() => UserState());
      }),
      children: [
        GetPage(
          name: details,
          page: () => const UserDetails(),
        ),
      ],
    );
  }
}
