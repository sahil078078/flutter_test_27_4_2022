import 'package:flutter/material.dart';

List<Map<String, dynamic>> profile = [
  {
    "name": "Profile",
    "icon": Icons.person,
  },
  {
    "name": "Setting",
    "icon": Icons.settings,
    "submenu": [
      {
        "name": "Edit",
        "icon": Icons.edit,
      },
      {
        "name": "LogOut",
        "icon": Icons.logout,
      }
    ],
  }
];

class MainProfile extends StatelessWidget {
  final int index;
  bool isDropdown;

  MainProfile({
    Key? key,
    required this.index,
    this.isDropdown = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          profile[index]['icon'],
        ),
        const SizedBox(width: 20),
        Text(
          profile[index]['name'],
        ),
        const SizedBox(width: 20),
        isDropdown
            ? DropdownButton(
                focusColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: <String>[
                  'Android',
                  'IOS',
                  'Flutter',
                  'Node',
                  'Java',
                  'Python',
                  'PHP',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {},
              )
            : const SizedBox(),
      ],
    );
  }
}

class DropDownValue extends StatelessWidget {
  const DropDownValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: Colors.black,
    );
  }
}
