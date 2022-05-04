import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/Test1_2/list_of_task1_2.dart';

class HomeScreen1_2 extends StatelessWidget {
  const HomeScreen1_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                itemCount: listOfMainMenu12.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(left: 30, top: 10, right: 10),
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ExpansionTile(
                      title: Text(listOfMainMenu12[index].name),
                      leading: Icon(listOfMainMenu12.elementAt(index).icon),
                      trailing:
                          listOfMainMenu12.elementAt(index).sunMenu12.isNotEmpty
                              ? const Icon(Icons.arrow_drop_down)
                              : const SizedBox.shrink(),
                      children: listOfMainMenu12
                              .elementAt(index)
                              .sunMenu12
                              .isNotEmpty
                          ? [
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: listOfSubMenu12.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    margin: const EdgeInsets.only(
                                        left: 50, top: 8, right: 15, bottom: 8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    elevation: 1.5,
                                    child: ListTile(
                                      title: Text(listOfSubMenu12
                                          .elementAt(index)
                                          .name),
                                      leading: Icon(listOfSubMenu12
                                          .elementAt(index)
                                          .icon),
                                    ),
                                  );
                                },
                              ),
                            ]
                          : [],
                    ),
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
