import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/Test1_1/sub_menu_list.dart';
import 'package:flutter_test_27_4_2022/Test1_1/task_list.dart';

class HomeScreen1_1 extends StatefulWidget {
  const HomeScreen1_1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1_1> createState() => _HomeScreen1_1State();
}

class _HomeScreen1_1State extends State<HomeScreen1_1> {
  List<bool> isDropDown =
      List.generate(listOfMainMenu.length, (index) => false);

  // bool isDropDown = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: listOfMainMenu.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 8, left: 30, right: 10),
                        padding: const EdgeInsets.only(left: 20, right: 25),
                        width: size.width,
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Icon(listOfMainMenu.elementAt(index).icon),
                            const SizedBox(width: 20),
                            Text(
                              listOfMainMenu.elementAt(index).name,
                            ),
                            const Spacer(),
                            listOfMainMenu
                                    .elementAt(index)
                                    .listOfSubMenu
                                    .isNotEmpty
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        isDropDown[index] =
                                            !isDropDown.elementAt(index);
                                      });
                                    },
                                    child: isDropDown[index]
                                        ? const Icon(Icons.arrow_drop_down)
                                        : const Icon(Icons.arrow_drop_up),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                      isDropDown[index]
                          ? const SubMenuList()
                          : const SizedBox.shrink(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
