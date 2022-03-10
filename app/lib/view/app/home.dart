import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widget/layout.dart';
import 'package:app/widget/base_bottom_navbar.dart';
import 'package:app/state/states.dart';
import 'package:app/state/account.dart';

class AppHome extends GetView {
  const AppHome({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final List<BottomNavBarItem> _list = [
      BottomNavBarItem(
        icon: Icons.home_outlined,
        label: '首页',
      ),
      BottomNavBarItem(
        icon: Icons.supervised_user_circle_outlined,
        label: '用户',
      ),
      BottomNavBarItem(
        icon: Icons.account_circle_outlined,
        label: '账户',
      ),
    ];

    Widget _setBody(int index) {
      switch (index) {
        case 0: return Center(
          child: ElevatedButton(
            child: const Text('错误首页'),
            onPressed: () => Get.toNamed("/errorHome"),
          ),
        );
        case 1: return Center(
          child: ElevatedButton(
            child: const Text('用户首页'),
            onPressed: () => Get.toNamed("/userHome"),
          ),
        );
        default: return Center(
          child: ElevatedButton(
            child: const Text('账户首页'),
            onPressed: () => Get.toNamed("/accountHome"),
          ),
        );
      }
    }

    return GetBuilder<States>(
      builder: (_) => Layout(
        appBar: AppBar(title: const Text('App首页')),
        body: _setBody(_.bottomNavBarIndex),
        bottomNavigationBar: BaseBottomNavBar(
          list: _list,
          index: _.bottomNavBarIndex,
          setIndex: (int index) => _.setBottomNavBarIndex(index),
        ),
      ),
      initState: (_) async {
        await AccountState.to.createAccount();
      },
    );
  }
}
