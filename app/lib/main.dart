import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.init(),
      getPages: Routes.pages,
      unknownRoute: Routes.error,
      defaultTransition: Transition.rightToLeft,
      routingCallback: (routing) {
        if(routing?.current == '/appHome') {
        }
      },
    );
  }
}
