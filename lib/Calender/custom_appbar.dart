import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      bottom: const TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.access_alarm),
            text: 'Alarm',
          ),
          Tab(
            icon: Icon(Icons.access_time),
            text: 'Clock',
          ),
          Tab(
            icon: Icon(Icons.timer),
            text: 'Timer',
          )
        ],
      ),
    );
  }
}
