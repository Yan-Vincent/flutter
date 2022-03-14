import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class System {
  static void setUI(bool isDarkMode) {
    return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: null,
      systemNavigationBarIconBrightness: isDarkMode ? Brightness.dark : Brightness.light,
    ));
  }
}
