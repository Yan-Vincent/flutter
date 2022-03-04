import 'package:get/get.dart';
import 'package:app/model/user.dart';

class UserState extends GetxController {
  static UserState get to => Get.find();

  List<User> userList = [];

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

  /*查找用户*/
  void searchUser() {}

  /*编辑用户*/
  void editUser() {}

  /*删除用户*/
  void delUser(int id) {
    int _index = userList.indexWhere((e) => e.id==id);
    if(_index != -1) {
      userList.removeAt(_index);
      update();
    }
  }

  /*添加用户*/
  void addUser(Map<String, dynamic> user) {
    userList.add(User.fromJson(user));
    update();
  }

  /*获取列表*/
  void getUserList() {
    userList.clear();
    List<Map<String, dynamic>> _userList = [
      {'id': 10000, 'name': 'Vincent'},
      {'id': 20000, 'name': 'Sherry'},
    ];
    for(var i=0,len=_userList.length; i<len; i++) {
      addUser(_userList[i]);
    }
  }
}
