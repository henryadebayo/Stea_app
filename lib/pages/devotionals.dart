import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        child:
           // SearchField(searchTxt: "search for Devotional",),
            //SizedBox(height:20.0.h),
           // DevotionalItem(),
         GridView.count(
           crossAxisCount: 2,
           primary: false,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10,
           children: <Widget>[
         Container(
         height: 40.0.h,
           width: 40.0.w,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                 topRight:Radius.circular(20.0),
                 topLeft:Radius.circular(20.0),
               ),
               color: Colors.blueAccent
           ),
         ),
        Container(
          height: 40.0.h,
          width: 40.0.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight:Radius.circular(20.0),
                topLeft:Radius.circular(20.0),
              ),
              color: Colors.blueAccent
          ),
        ),  //DevotionalItem(),
             // DevotionalItem(),
             // DevotionalItem(),
             // DevotionalItem(),
           ],
         ),
      ),
    );
  }
}
