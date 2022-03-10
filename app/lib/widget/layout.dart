import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({
    Key? key,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,
  }):super(key:key);
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
