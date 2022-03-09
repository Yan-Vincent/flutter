import 'package:flutter/material.dart';

class BaseBottomNavBar extends StatelessWidget {
  const BaseBottomNavBar({
    Key? key,
    required this.list,
    required this.index,
    required this.setIndex,
  }):super(key:key);
  final List<BottomNavBarItem> list;
  final int index;
  final Function setIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: list.asMap().keys.map((i) => BottomNavigationBarItem(
        icon: Icon(list[i].icon),
        label: list[i].label,
      )).toList(),
      currentIndex: index,
      onTap: (int i) {
        if(i == index) return;
        setIndex(i);
      },
    );
  }
}

class BottomNavBarItem {
  BottomNavBarItem({
    required this.icon,
    required this.label,
  });
  IconData icon;
  String label;
}
