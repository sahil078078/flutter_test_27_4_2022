import 'package:flutter/material.dart';

class CustomTabbarView extends StatelessWidget {
  const CustomTabbarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 20,
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(0.4),
          ),
          height: 200,
          child: const TabBarView(
            children: [
              Icon(Icons.access_alarm),
              Center(child: Text('formatteDate')),
              Icon(Icons.timer),
            ],
          ),
        ),
      ],
    );
  }
}
