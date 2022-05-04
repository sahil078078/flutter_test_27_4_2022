import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomizeCalender extends StatefulWidget {
  CustomizeCalender({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomizeCalender> createState() => _CustomizeCalenderState();
}

class _CustomizeCalenderState extends State<CustomizeCalender> {
  late DateTime today = DateTime(2022, 1, 1);
  late DateTime startOfWeek = today.subtract(Duration(days: today.weekday - 1));
  late List<DateTime> listOfWeek = List.generate(7, (index) {
    DateTime _dateTime = startOfWeek;
    return _dateTime.add(
      Duration(days: index),
    );
  });
  DateTime? selectDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8, top: 6),
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(65),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(10, 28),
            blurRadius: 35,
            spreadRadius: -35,
          ),
        ],
      ),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(65),
          ),
        ),
        elevation: 0.0,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              DateFormat('MMM-yyyy').format(
                listOfWeek.elementAt(0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfWeek.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectDate = listOfWeek.elementAt(index);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 6),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: today == listOfWeek.elementAt(index)
                                  ? Colors.green
                                  : Colors.black,
                              width: today == listOfWeek.elementAt(index)
                                  ? 3.0
                                  : 1.5,
                            ),
                            color: selectDate == listOfWeek.elementAt(index)
                                ? Colors.yellow.withOpacity(0.35)
                                : Colors.grey.withOpacity(0.1),
                          ),
                          child: Center(
                            child: Text(
                              DateFormat('d')
                                  .format(listOfWeek.elementAt(index)),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        DateFormat('EE').format(
                          listOfWeek.elementAt(index),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      startOfWeek =
                          startOfWeek.subtract(const Duration(days: 7));
                      listOfWeek = List.generate(7, (index) {
                        DateTime _dateTime = startOfWeek;
                        return _dateTime.add(
                          Duration(days: index),
                        );
                      });
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      startOfWeek = startOfWeek.add(
                        const Duration(days: 7),
                      );
                      listOfWeek = List.generate(7, (index) {
                        DateTime _dateTime = startOfWeek;
                        return _dateTime.add(
                          Duration(days: index),
                        );
                      });
                    });
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
