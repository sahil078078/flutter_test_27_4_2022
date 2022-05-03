import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/Test1_1/task_list.dart';

class SubMenuList extends StatelessWidget {
  const SubMenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listOfSubMenu.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 8, left: 65, right: 10),
          padding: const EdgeInsets.only(left: 20, right: 25),
          width: size.width,
          height: size.height * 0.055,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Icon(listOfSubMenu.elementAt(index).icon),
              const SizedBox(width: 20),
              Text(
                listOfSubMenu.elementAt(index).name,
              ),
            ],
          ),
        );
      },
    );
  }
}
