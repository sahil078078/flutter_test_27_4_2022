import 'package:flutter/material.dart';

import 'ListOfTask.dart';

class SubContainer extends StatelessWidget {
  bool ShowOnPress;
  int mainIndex;

  SubContainer({
    Key? key,
    required this.ShowOnPress,
    required this.mainIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShowOnPress
        ? Container(
            margin:
                const EdgeInsets.only(left: 50, right: 10, top: 2, bottom: 2),
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: infolist[mainIndex].listOfSub!.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 5,
                    bottom: 5,
                  ),
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        infolist[mainIndex].listOfSub![index].icon2,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        infolist[mainIndex].listOfSub![index].name2,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        : const SizedBox.shrink();
  }
}
