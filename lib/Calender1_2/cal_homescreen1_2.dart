import 'package:flutter/material.dart';

import 'customize_calender.dart';
import 'custon_appbar_design.dart';

class CalHomeScreen1_2 extends StatefulWidget {
  CalHomeScreen1_2({Key? key}) : super(key: key);

  @override
  State<CalHomeScreen1_2> createState() => _CalHomeScreen1_2State();
}

class _CalHomeScreen1_2State extends State<CalHomeScreen1_2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(135.0), // here the desired height
          child: CustomAppBarDesign(),
        ),
        body: Column(
          children: [
            const SizedBox(height: 164),
            // use for remove height of appbar
            CustomizeCalender()
          ],
        ),
      ),
    );
  }
}
