import 'package:flutter/material.dart';
import 'package:stea/widgets/bottomNavigation.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/devotionalsItem.dart';
import 'package:stea/widgets/searchField.dart';

class Devotionals extends StatefulWidget {
  const Devotionals({Key key}) : super(key: key);

  @override
  _DevotionalsState createState() => _DevotionalsState();
}

class _DevotionalsState extends State<Devotionals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        title: Text("Devotionals",style: TextStyle(fontFamily: " GoogleSans",),),
        centerTitle: true,
        backgroundColor: KdarkBlueColour,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 10.0, top: 20.0, bottom: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children:[
              SearchField(searchTxt: "search for Devotional",),
              SizedBox(height:20.0),
              DevotionalItem(),
          ],),
        ),
      ),
    );
  }
}