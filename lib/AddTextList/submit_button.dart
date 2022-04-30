import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/AddTextList/final_print.dart';

class SubmitButtom extends StatelessWidget {
  SubmitButtom({
    Key? key,
    required GlobalKey<FormState> globalKey,
    required this.value,
  })  : _globalKey = globalKey,
        super(key: key);
  final GlobalKey<FormState> _globalKey;
  List<TextEditingController> value;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_globalKey.currentState!.validate()) {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => FinalPrintPage(value: value),
            ),
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 12,
          top: 10,
          right: 90,
          left: 10,
        ),
        height: 62,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            'Save List'.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
