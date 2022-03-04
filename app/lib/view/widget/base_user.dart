import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/view/state/user.dart';

class BaseUser extends StatelessWidget {
  const BaseUser({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserState>(
      init: UserState(),
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _.userList.asMap().keys.map((i) => Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                offset: Offset(2.0, 4.0),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${_.userList[i].name}'),
              Text('${_.userList[i].id}'),
            ],
          ),
        )).toList(),
      ),
    );
  }
}
