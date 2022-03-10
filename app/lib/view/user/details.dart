import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widget/layout.dart';

class UserDetails extends GetView {
  const UserDetails({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(title: Text('${Get.parameters['name']}')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('带参数返回上一页'),
              onPressed: () => Get.back(result: Get.arguments),
            ),
            ElevatedButton(
              child: const Text('返回App首页'),
              onPressed: () => Get.until((route) => Get.currentRoute=='/appHome'),
            ),
          ],
        ),
      ),
    );
  }
}
