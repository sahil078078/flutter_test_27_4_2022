import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/MyCalenderDesign/week_day_widget.dart';
import 'package:intl/intl.dart';

import 'custom_appbar.dart';

class MyCalenderHomeScreen extends StatefulWidget {
  MyCalenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyCalenderHomeScreen> createState() => _MyCalenderHomeScreenState();
}

class _MyCalenderHomeScreenState extends State<MyCalenderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            const CustomAppBar(),
            Positioned(
              bottom: 0,
              child: Container(
                height: size.height * 0.75,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      height: size.height * 0.25,
                      child: WeekDateWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
