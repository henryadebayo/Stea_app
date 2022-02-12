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
        borderRadius: BorderRadius.only(
          topRight:Radius.circular(20.0),
          topLeft:Radius.circular(20.0),
        ),
        color: Colors.blueAccent
      ),
    );
  }
}

//
// Row(
// children: [
// Container(),
// ],
// );