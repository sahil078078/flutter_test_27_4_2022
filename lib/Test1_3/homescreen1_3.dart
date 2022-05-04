import 'package:flutter/material.dart';
import 'dart:developer';

class HomeScreen1_3 extends StatelessWidget {
  bool isDropButtonUp = true;
  List<Map<String, dynamic>> mainMenu = [
    {
      "name": "Profile",
      "icon": Icons.person,
      "subMenu": [],
    },
    {
      "name": "Travel",
      "icon": Icons.travel_explore_outlined,
      "subMenu": [
        {
          "name": "Bus",
          "icon": Icons.bus_alert_outlined,
        },
        {
          "name": "Train",
          "icon": Icons.directions_train_outlined,
        },
        {
          "name": "Plane",
          "icon": Icons.airplanemode_active,
        }
      ],
    },
    {
      "name": "Contact",
      "icon": Icons.contact_page,
      "subMenu": [
        {
          "name": "Email",
          "icon": Icons.email_outlined,
        },
        {
          "name": "Call",
          "icon": Icons.call,
        },
        {
          "name": "SMS/MMS",
          "icon": Icons.message,
        },
        {
          "name": "Web",
          "icon": Icons.public,
        },
      ],
    },
    {
      "name": "SocialMedia",
      "icon": Icons.person,
      "subMenu": [
        {
          "name": "Facebook",
          "icon": Icons.facebook,
        },
        {
          "name": "WhatsApp",
          "icon": Icons.whatsapp,
        },
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          elevation: 0.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    'https://i2.wp.com/travelmoments.net/wp-content/uploads/2020/10/Welcome-to-Travel-Moments-Homepage.png?fit=2240%2C1260&ssl=1',
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: mainMenu.length,
                  itemBuilder: (context, mainIndex) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return ExpansionTile(
                          leading: Icon(mainMenu[mainIndex]['icon']),
                          title: Text(
                            mainMenu.elementAt(mainIndex)['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          onExpansionChanged: (value) {
                            setState(() {
                              isDropButtonUp = !isDropButtonUp;
                              log(isDropButtonUp.toString());
                            });
                          },
                          trailing: mainMenu
                                  .elementAt(mainIndex)['subMenu']
                                  .isNotEmpty
                              ? isDropButtonUp
                                  ? const Icon(Icons.arrow_drop_up)
                                  : const Icon(Icons.arrow_drop_down)
                              : const SizedBox.shrink(),
                          children: mainMenu
                                  .elementAt(mainIndex)['subMenu']
                                  .isNotEmpty
                              ? [
                                  ListView.builder(
                                    padding: const EdgeInsets.only(left: 58),
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: mainMenu
                                        .elementAt(mainIndex)['subMenu']
                                        .length,
                                    itemBuilder: (context, subIndex) {
                                      return ListTile(
                                        leading: Icon(mainMenu
                                            .elementAt(mainIndex)['subMenu']
                                            .elementAt(subIndex)['icon']),
                                        title: Text(mainMenu
                                            .elementAt(mainIndex)['subMenu']
                                            .elementAt(subIndex)['name']),
                                      );
                                    },
                                  ),
                                ]
                              : [],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
