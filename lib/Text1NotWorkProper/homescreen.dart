import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/Text1NotWorkProper/profiledata.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainProfile(index: 0),
              const SizedBox(height: 10),
              MainProfile(index: 1, isDropdown: true),
            ],
          ),
        ),
      ),
    );
  }
}
