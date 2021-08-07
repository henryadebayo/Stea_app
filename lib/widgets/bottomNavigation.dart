import 'package:flutter/material.dart';
import 'package:stea/pages/audioLib.dart';
import 'package:stea/pages/devotionals.dart';
import 'package:stea/pages/home.dart';

import 'const.dart';

class BottomNavigation extends StatefulWidget {

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTabIndex = 1;
  List<Widget> pages = [
    HomeScreen(),
    Devotionals(),
    AudioLib(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       onTap: (currentTabIndex){ setState(() {
        // Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>pages[currentTabIndex]));
       });
       },
        selectedLabelStyle: TextStyle(fontWeight:FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight:FontWeight.bold),
        selectedItemColor:KdarkBlueColour,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title:Text('Home'),

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.my_library_books),
            title:Text('Devotionals'),

          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.multitrack_audio_sharp),
            title:Text('Sermons'),

          ),
        ],
    );
  }
}
