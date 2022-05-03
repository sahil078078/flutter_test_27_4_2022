import 'package:flutter/material.dart';

class MainMenu {
  final String name;
  final IconData icon;
  List<SubMenu> listOfSubMenu;

  MainMenu({
    required this.name,
    required this.icon,
    this.listOfSubMenu = const [],
  });
}

class SubMenu {
  final String name;
  final IconData icon;

  SubMenu({
    required this.name,
    required this.icon,
  });
}

List<MainMenu> listOfMainMenu = [
  MainMenu(
    name: 'Profile',
    icon: Icons.person,
  ),
  MainMenu(
    name: 'Setting',
    icon: Icons.settings,
    listOfSubMenu: listOfSubMenu,
  ),
];

List<SubMenu> listOfSubMenu = [
  SubMenu(name: 'Edit', icon: Icons.edit),
  SubMenu(
    name: 'Travel',
    icon: Icons.travel_explore_outlined,
  ),
];
