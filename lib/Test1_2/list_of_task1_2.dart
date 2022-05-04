import 'package:flutter/material.dart';

class MainMenu12 {
  final String name;
  final IconData icon;
  List<SubMenu12> sunMenu12;

  MainMenu12({
    required this.name,
    required this.icon,
    this.sunMenu12 = const [],
  });
}

class SubMenu12 {
  final String name;
  final IconData icon;

  SubMenu12({
    required this.name,
    required this.icon,
  });
}

List<MainMenu12> listOfMainMenu12 = [
  MainMenu12(
    name: 'Profile',
    icon: Icons.person,
  ),
  MainMenu12(
    name: 'Setting',
    icon: Icons.settings,
    sunMenu12: listOfSubMenu12,
  ),
];

List<SubMenu12> listOfSubMenu12 = [
  SubMenu12(name: 'Edit', icon: Icons.edit),
  SubMenu12(
    name: 'Travel',
    icon: Icons.travel_explore_outlined,
  ),
];
