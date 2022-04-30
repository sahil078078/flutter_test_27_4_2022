import 'package:flutter/material.dart';
import 'AddTextList/homescr_text_list.dart';
import 'Calender/cal_home_screen.dart';
import 'MyCalenderDesign/myCalenderHomescreen.dart';
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
      home: MyCalenderHomeScreen(),
    );
  }
}
