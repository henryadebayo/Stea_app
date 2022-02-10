import 'package:flutter/material.dart';
import 'package:stea/pages/audioLib.dart';
import 'package:stea/pages/devotionals.dart';
import 'package:stea/pages/home.dart';

import 'buildAppbarLogo.dart';
import 'const.dart';

class BottomNavigationWidget extends StatefulWidget {
  final String userName;

  const BottomNavigationWidget({this.userName});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentTabIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    Devotionals(),
    AudioLib(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: KdarkBlueColour,
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books),
            title: Text('Devotionals'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.multitrack_audio_sharp),
            title: Text('Sermons'),
          ),
        ],
      ),
      body: pages[currentTabIndex],//pages[currentTabIndex],
    );
  }
}
