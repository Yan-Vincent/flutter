import 'package:get/get.dart';
import '../view/user/home.dart';
import '../view/user/details.dart';

class UserRoute {
  static const String home = '/userHome';
  static const String details = '/details';

  static GetPage pages() {
    return GetPage(
      name: home,
      page: ()=> const UserHome(),
      children: [
        GetPage(
          name: details,
          page: ()=> const UserDetails(),
        ),
      ],
    );
  }
}
