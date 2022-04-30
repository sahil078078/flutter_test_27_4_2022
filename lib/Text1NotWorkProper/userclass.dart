import 'package:flutter/material.dart';

class ListOfInfo {
  bool isDroplist;
  final String name;
  final IconData icon;
  List<ListOfSub>? listOfSub;

  ListOfInfo({
    required this.name,
    required this.icon,
    this.listOfSub,
    this.isDroplist = false,
  });
}

class ListOfSub {
  final String name2;
  final IconData icon2;

  ListOfSub({
    required this.name2,
    required this.icon2,
  });
}

List<ListOfInfo> infolist = [
  ListOfInfo(
    name: 'Profile',
    icon: Icons.person,
    isDroplist: false,
  ),
  ListOfInfo(
    isDroplist: true,
    name: 'Setting',
    icon: Icons.settings,
    listOfSub: subInfoList,
  ),
  ListOfInfo(
    name: 'Profile',
    icon: Icons.person,
    isDroplist: false,
  ),
];

List<ListOfSub> subInfoList = [
  ListOfSub(
    name2: 'edit',
    icon2: Icons.edit,
  ),
  ListOfSub(
    name2: 'LogOut',
    icon2: Icons.logout,
  ),
  ListOfSub(
    name2: 'LogOut',
    icon2: Icons.logout,
  ),
];
