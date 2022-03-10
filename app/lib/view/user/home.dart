import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/widget/layout.dart';
import 'package:app/widget/base_item.dart';
import 'package:app/state/user.dart';

class UserHome extends GetView<UserState> {
  const UserHome({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(title: const Text('用户首页')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<UserState>(
          builder: (_) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _.userList.asMap().keys.map((i) => GestureDetector(
              child: BaseItem(
                id: _.userList[i].id,
                name: _.userList[i].name,
              ),
              onTap: () async {
                var _data = await Get.toNamed(
                  "/userHome/${_.userList[i].id}?name=${_.userList[i].name}",
                  arguments: {'message': _.userList[i].name},
                );
                if(GetUtils.isNull(_data)) return;
                Get.snackbar('返回消息', _data['message']);
              },
            )).toList(),
          ),
          initState: (_) async {
            await UserState.to.getUserList();
          },
        ),
      ),
    );
  }
}
