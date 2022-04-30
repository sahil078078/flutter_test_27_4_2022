import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeekDateWidget extends StatefulWidget {
  WeekDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<WeekDateWidget> createState() => _WeekDateWidgetState();
}

class _WeekDateWidgetState extends State<WeekDateWidget> {
  DateTime today = DateTime.now();
  late DateTime startingOfWeek =
      today.subtract(Duration(days: today.weekday - 1));
  late List<DateTime> listDate = List.generate(7, (index) {
    DateTime myDate = startingOfWeek;
    return myDate.add(
      Duration(days: index),
    );
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {
                setState(() {
                  startingOfWeek =
                      startingOfWeek.subtract(const Duration(days: 7));
                  listDate = List.generate(7, (index) {
                    DateTime myDate = startingOfWeek;
                    return myDate.add(
                      Duration(days: index),
                    );
                  });
                  print(listDate);
                });
              },
              icon: const Icon(Icons.arrow_back_ios_rounded),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  startingOfWeek = startingOfWeek.add(
                    const Duration(days: 7),
                  );
                  listDate = List.generate(7, (index) {
                    DateTime myDate = startingOfWeek;
                    return myDate.add(
                      Duration(days: index),
                    );
                  });
                });
              },
              icon: const Icon(Icons.arrow_forward_ios_sharp),
            ),
            const SizedBox(width: 10),
          ],
        ),
        SizedBox(
          height: size.height * 0.15,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: listDate.length,
            itemBuilder: (context, index) {
              DateTime date = listDate.elementAt(index);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: date == today ? Colors.green : Colors.black,
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(DateFormat('d').format(date),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    DateFormat('EEE').format(date),
                    style: TextStyle(
                      color: today == date ? Colors.green : Colors.black,
                      fontWeight:
                          date == today ? FontWeight.bold : FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
