import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/widgets/searchField.dart';

class TestGrid extends StatefulWidget {
  const TestGrid({Key key}) : super(key: key);

  @override
  _TestGridState createState() => _TestGridState();
}

class _TestGridState extends State<TestGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
      ),
      body: GridView.count(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
          scrollDirection: Axis.vertical,
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
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            Container(
              height: 40.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                  color: Colors.blueAccent
              ),
            ), //DevotionalItem(),
            // DevotionalItem(),
          ]
      ), // DevotionalItem(),
    ); // DevotionalItem(),
  }
}
