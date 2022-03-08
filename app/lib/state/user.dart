import 'package:get/get.dart';
import '../model/user.dart';
import '../controller/user.dart';

class UserState extends GetxController {
  static UserState get to => Get.find();
  List<UserModel> userList = [];

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

  /*查找用户*/
  void searchUser() {}

  /*编辑用户*/
  void editUser() {}

  /*删除用户*/
  Future delUser(int id) async {
    int _index = userList.indexWhere((e) => e.id==id);
    if(_index != -1) {
      Map<String, dynamic> _data = await UserController.delUser(id);
      if(_data['code'] == 200) {
        userList.removeAt(_index);
        update();
      }
    }
  }

  /*添加用户*/
  Future addUser(Map<String, dynamic> user) async {
    Map<String, dynamic> _data = await UserController.addUser(user);
    if(_data['code'] == 200) {
      userList.add(UserModel.fromJson(user));
      update();
    }
  }

  /*获取列表*/
  Future getUserList() async {
    userList.clear();
    Map<String, dynamic> _data = await UserController.getUserList();
    if(_data['code'] == 200) {
      List<Map<String, dynamic>> _userList = _data['data'];
      for(var i=0,len=_userList.length; i<len; i++) {
        addUser(_userList[i]);
      }
    }
  }
}
