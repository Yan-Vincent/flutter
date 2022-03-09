import 'package:get/get.dart';

class States extends GetxController {
  static States get to => Get.find();
  int bottomNavBarIndex = 0;

  void setBottomNavBarIndex(int index) {
    if(index == bottomNavBarIndex) return;
    bottomNavBarIndex = index;
    update();
  }
}
