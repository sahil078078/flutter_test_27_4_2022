import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'custom_appbar.dart';
import 'custom_tabbar_view.dart';

class CalenderHomeScreen extends StatefulWidget {
  const CalenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<CalenderHomeScreen> createState() => _CalenderHomeScreenState();
}

class _CalenderHomeScreenState extends State<CalenderHomeScreen> {
  DateTime today = DateTime.now();
  DateFormat formatter = DateFormat.EEEE();
  late DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));
  late List<DateTime> dateList = List.generate(7, (index) {
    // DateTime myDate = startOfWeek;
    DateTime myDate = startOfWeek;
    return myDate.add(Duration(days: index));
  });

  @override
  Widget build(BuildContext context) {
    // final dateList = List.generate(7, (i) {
    //   DateTime myDate = DateTime.now();
    //   final DateFormat dateFormat = DateFormat('dd-MM-yyyy');
    //   return myDate.subtract(Duration(days: myDate.weekday - 1));
    // });

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const CustomTabbarView(),
              const SizedBox(height: 50),
              Container(
                height: MediaQuery.of(context).size.height - 370,
                margin: const EdgeInsets.only(
                  bottom: 10,
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        print("hh");
                        setState(() {
                          startOfWeek = startOfWeek.subtract(Duration(days: 7));
                          dateList = List.generate(7, (index) {
                            DateTime myDate = startOfWeek;
                            return myDate.add(Duration(days: index));
                          });
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_up),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: dateList.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Text(
                              dateList.elementAt(index).toString(),
                              style: TextStyle(
                                color: dateList.elementAt(index) == today
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          startOfWeek =
                              startOfWeek.add(const Duration(days: 7));
                          dateList = List.generate(7, (index) {
                            DateTime myDate = startOfWeek;
                            return myDate.add(Duration(days: index));
                          });
                        });
                      },
                      icon: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
