import 'package:get/get.dart';
import 'package:app/model/account.dart';

class AccountState extends GetxController {
  static AccountState get to => Get.find();

  final account = Account().obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    //super.onReady();
  }

  @override
  void onClose() {
    //super.onClose();
  }

  /*查找账户*/
  void searchAccount() {}

  /*编辑账户*/
  void editAccount() {}

  /*注销账户*/
  void closeAccount() {}

  /*创建账户*/
  void createAccount() {
    Map<String, dynamic> _account = {
      'id': 10000,
      'name': 'Vincent',
    };
    account.update((val) {
      account.value = Account.fromJson(_account);
    });
  }
}
