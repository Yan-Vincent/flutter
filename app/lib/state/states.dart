import 'package:get/get.dart';

class States extends GetxController {
  static States get to => Get.find();
  int bottomNavBarIndex = 0;

  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onReady() {
  //   super.onReady();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void setBottomNavBarIndex(int index) {
    if(index == bottomNavBarIndex) return;
    bottomNavBarIndex = index;
    update();
  }
}
