import 'package:flutter/material.dart';

class ListMainTab {
  bool isDroplist;
  final String name;
  final IconData icon;
  List<ListOfSubTab>? listOfSub;

  ListMainTab({
    required this.name,
    required this.icon,
    this.listOfSub,
    this.isDroplist = false,
  });
}

class ListOfSubTab {
  final String name2;
  final IconData icon2;

  ListOfSubTab({
    required this.name2,
    required this.icon2,
  });
}

List<ListMainTab> infolist = [
  ListMainTab(
    name: 'Profile',
    icon: Icons.person,
    isDroplist: false,
  ),
  ListMainTab(
    isDroplist: true,
    name: 'Setting',
    icon: Icons.settings,
    listOfSub: subInfoList,
  ),
  ListMainTab(
    name: 'Movie',
    icon: Icons.movie,
    isDroplist: true,
    listOfSub: subInfoList,
  ),
];

List<ListOfSubTab> subInfoList = [
  ListOfSubTab(
    name2: 'edit',
    icon2: Icons.edit,
  ),
  ListOfSubTab(
    name2: 'LogOut',
    icon2: Icons.logout,
  ),
];
