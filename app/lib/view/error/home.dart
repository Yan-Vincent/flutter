import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widget/layout.dart';

class ErrorHome extends GetView {
  const ErrorHome({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(title: const Text('错误首页')),
      body: Center(
        child: Text('${GetUtils.isNull(Get.arguments) ? '未知错误' : Get.arguments['code']}'),
      ),
    );
  }
}
