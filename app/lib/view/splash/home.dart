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
            Text('title'.tr),
            ElevatedButton(
              child: const Text('切换中文'),
              onPressed: () {
                var locale = const Locale('zh', 'CN');
                Get.updateLocale(locale);
              },
            ),
            ElevatedButton(
              child: const Text('切换英文'),
              onPressed: () {
                var locale = const Locale('en', 'US');
                Get.updateLocale(locale);
              },
            ),
            ElevatedButton(
              child: const Text('进入首页'),
              onPressed: () => Get.offAllNamed('/appHome'),
            ),
          ],
        ),
      ),
    );
  }
}
