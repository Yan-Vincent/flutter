import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import './route/routes.dart';
import './translation/translation.dart';
import './utils/utils.dart' as h;
import './config/base_url.dart';

void main() {
  runApp(const MyApp());
  h.System.setUI(Get.isDarkMode);
  h.Http.init(baseUrl);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.init(),
      getPages: Routes.pages,
      unknownRoute: Routes.error,
      defaultTransition: Transition.rightToLeft,
      routingCallback: (routing) {
        if(routing?.current == '/appHome') {
        }
      },
      locale: ui.window.locale,//语言逻辑：本地?ui.window.locale:本地
      translations: Translation(),
      fallbackLocale: const Locale('zh', 'CN'),
      themeMode: ThemeMode.system,//配色逻辑：本地?ThemeMode.system:本地
      theme: FlexThemeData.light(scheme: FlexScheme.rosewood),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.rosewood),
    );
  }
}
