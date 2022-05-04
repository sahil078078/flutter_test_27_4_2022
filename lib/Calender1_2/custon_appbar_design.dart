import 'package:flutter/material.dart';

class CustomAppBarDesign extends StatelessWidget {
  const CustomAppBarDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: const Text('Flutter UI'),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ],
      backgroundColor: Colors.black,
      elevation: 0.0,
      bottom: TabBar(
        indicator: BoxDecoration(
          color: Colors.black.withOpacity(0.22),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black,
            width: 1.5,
          ),
        ),
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 4),
        isScrollable: false,
        unselectedLabelColor: Colors.black.withOpacity(0.5),
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.feed_outlined),
            text: 'Feed',
          ),
          Tab(
            icon: Icon(Icons.person),
            text: 'Profile',
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: 'Setting',
          ),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.green.withOpacity(0.85),
            Colors.red.withOpacity(0.9),
          ],
        )),
      ),
    );
  }
}
