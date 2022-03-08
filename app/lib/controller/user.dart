class UserController {
  static const String _getUserList = '';
  static const String _addUser = '';
  static const String _delUser = '';

  /*获取列表*/
  static Future<Map<String, dynamic>> getUserList() async {
    return await Future.delayed(const Duration(seconds: 1), ()=> {
      'code': 200,
      'data': [
        {'id': 10000, 'name': 'Vincent'},
        {'id': 20000, 'name': 'Sherry'},
      ],
    });
  }

  /*添加用户*/
  static Future<Map<String, dynamic>> addUser(Map<String, dynamic> user) async {
    return await Future.delayed(const Duration(seconds: 1), ()=> {
      'code': 200,
      'data': {},
    });
  }

  /*删除用户*/
  static Future<Map<String, dynamic>> delUser(int id) async {
    return await Future.delayed(const Duration(seconds: 1), ()=> {
      'code': 200,
      'data': {},
    });
  }
}
