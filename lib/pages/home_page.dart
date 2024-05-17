import 'package:vega/util/my_tab.dart';
import 'package:flutter/material.dart';

import 'package:vega/tab/page1_tab.dart';
import 'package:vega/tab/page2_tab.dart';
import 'package:vega/tab/page3_tab.dart';
import 'package:vega/tab/page4_tab.dart';
import 'package:vega/tab/page5_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: 'lib/icons/icon1.png',
    ),

    // burger tab
    MyTab(
      iconPath: 'lib/icons/icon2.png',
    ),

    // smoothie tab
    MyTab(
      iconPath: 'lib/icons/icon3.png',
    ),

    // pancake tab
    MyTab(
      iconPath: 'lib/icons/icon4.png',
    ),

    // pizza tab
    MyTab(
      iconPath: 'lib/icons/icon5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'Dulceria',
                    style: TextStyle(fontSize: 24, color: Colors.grey[600]),
                  ),
                  Text(
                    'Sweet Candy',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // tab bar
            TabBar(tabs: myTabs),

            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),

                  // burger page
                  BurgerTab(),

                  // smoothie page
                  SmoothieTab(),

                  // pancake page
                  PancakeTab(),

                  // pizza page
                  PizzaTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
