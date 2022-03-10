import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widget/layout.dart';
import 'package:app/widget/base_item.dart';
import 'package:app/state/account.dart';

class AccountHome extends GetView {
  const AccountHome({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(title: const Text('账户首页')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<AccountState>(
          builder: (_) => BaseItem(
            id: _.account.id,
            name: _.account.name,
          ),
        ),
      ),
    );
  }
}
