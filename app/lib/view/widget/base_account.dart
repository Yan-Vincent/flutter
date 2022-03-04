import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/view/state/account.dart';

class BaseAccount extends StatelessWidget {
  const BaseAccount({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final AccountState accountState = Get.put(AccountState());

    return Container(
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
      child: Obx(()=> Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${accountState.account.value.id}'),
          Text('${accountState.account.value.name}'),
        ],
      )),
    );
  }
}
