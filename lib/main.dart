import 'package:flutter/material.dart';
import 'AddTextList/homescr_text_list.dart';
import 'Calender/cal_home_screen.dart';
import 'Calender1_2/cal_homescreen1_2.dart';
import 'MyCalenderDesign/myCalenderHomescreen.dart';
import 'Test1_1/homescreen1_1.dart';
import 'Test1_2/homescreen1_2.dart';
import 'Test1_3/homescreen1_3.dart';
import 'Text2/homesccreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      home: CalHomeScreen1_2(),
    );
  }
}
