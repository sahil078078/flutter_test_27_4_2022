import 'package:flutter/material.dart';

class FinalPrintPage extends StatelessWidget {
  FinalPrintPage({
    Key? key,
    required this.value,
  }) : super(key: key);
  List<TextEditingController> value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            value.length,
            (index) => Text(
              value.elementAt(index).text,
            ),
          ),
        ),
      ),
    );
  }
}
