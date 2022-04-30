import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/Text2/subcontainer.dart';
import 'dart:developer';
import 'ListOfTask.dart';

class MainListOfButton extends StatefulWidget {
  const MainListOfButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MainListOfButton> createState() => _MainListOfButtonState();
}

class _MainListOfButtonState extends State<MainListOfButton> {
  List<bool> ShowOnPress = List.generate(infolist.length, (index) => false);
  // bool ShowOnPress = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: infolist.length,
      itemBuilder: (context, index) {
        bool showDropDownButton = infolist[index].isDroplist;
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                top: 5,
                bottom: 5,
                right: 10,
              ),
              padding: const EdgeInsets.only(
                left: 20,
                top: 5,
                right: 20,
                bottom: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.35),
              ),
              child: Row(
                children: [
                  Icon(
                    infolist[index].icon,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    infolist[index].name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Spacer(),
                  showDropDownButton
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              ShowOnPress[index] =
                                  !ShowOnPress.elementAt(index);
                              log(ShowOnPress.toString());
                            });
                          },
                          splashRadius: 15,
                          icon: ShowOnPress[index]
                              ? const Icon(Icons.arrow_drop_down)
                              : const Icon(Icons.arrow_drop_up),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
            showDropDownButton
                ? SubContainer(
                    ShowOnPress: ShowOnPress[index],
                    mainIndex: index,
                  )
                : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
