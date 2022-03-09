import 'package:get/get.dart';
import '../model/account.dart';
import '../controller/account.dart';

class AccountState extends GetxController {
  static AccountState get to => Get.find();
  AccountModel account = AccountModel();

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

  /*查找账户*/
  void searchAccount() {}

  /*编辑账户*/
  void editAccount() {}

  /*注销账户*/
  void closeAccount() {}

  /*创建账户*/
  Future createAccount() async {
    Map<String, dynamic> _data = await AccountController.createAccount();
    if(_data['code'] == 200) {
      account = AccountModel.fromJson(_data['data']);
      update();
    }
  }
}
