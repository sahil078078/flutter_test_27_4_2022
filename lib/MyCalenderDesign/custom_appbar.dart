import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      decoration: const BoxDecoration(
        color: Color(0xff330066),
      ),
      child: Column(
        children: [
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding:
                  const EdgeInsets.only(left: 15, right: 12, top: 5, bottom: 5),
              height: size.height * 0.10,
              decoration: BoxDecoration(
                color: const Color(0xffe7fff9),
                borderRadius: BorderRadius.circular(28),
              ),
              child: Container(
                width: size.width * 0.80,
                alignment: Alignment.center,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 35),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
