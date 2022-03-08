class AccountController {
  static const String _createAccount = '';

  /*创建账户*/
  static Future<Map<String, dynamic>> createAccount() async {
    return await Future.delayed(const Duration(seconds: 1), ()=> {
      'code': 200,
      'data': {
        'id': 10000,
        'name': 'Vincent',
      },
    });
  }
}
