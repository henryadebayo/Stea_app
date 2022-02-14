import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DevotionalItem extends StatelessWidget {
  const DevotionalItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0.h,
            width: 40.0.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.0.r,),
        color: Colors.blueAccent
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 5.0,
            child: Image(
             image: AssetImage('images/devotionalsmock.jpg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0.w, top: 8.0.h),
            child: Text("The Memory Book", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0.w,),
            child: Text("The Memory Book can kdj jdvjvhidh jnjdvus ", style: TextStyle(color: Colors.white, fontSize: 10.0.sp)),
          ),
        ],
      ),
    );
  }
}
