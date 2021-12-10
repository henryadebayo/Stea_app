import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class testimonyItem extends StatelessWidget {
  String testifyerName;
  String testifyerText;
  testimonyItem({this.testifyerName, this.testifyerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            image: AssetImage("images/icon1.png"), fit: BoxFit.cover),
      ),
      child: Container(
        height: 100.h,
        width: 180.w,
        decoration: BoxDecoration(color: Colors.redAccent),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Text(
              testifyerName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.0, right: 5.0, top: 8.0),
                child: Text(
                  testifyerText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic),
                )),
          ],
        ),
      ),
    );
  }
}
