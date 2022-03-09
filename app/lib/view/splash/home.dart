import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widget/layout.dart';

class SplashHome extends GetView {
  const SplashHome({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('启动屏'),
            ElevatedButton(
              child: const Text('进入首页'),
              onPressed: ()=> Get.offAllNamed('/appHome'),
            ),
          ],
        ),
      ),
    );
  }
}
