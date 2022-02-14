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
        children: [
          Container(),
        ],
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