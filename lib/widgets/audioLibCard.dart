import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AudioLibCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(vertical:3.0.h),
      child: Container(
        height: 170.0.h,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/beautiful-bright-blue-bloom-petals-dew.jpg"), fit:  BoxFit.cover),
         // borderRadius: BorderRadius.circular(20.0),
        ),
        child: ClipRRect( // make sure we apply clip it properly
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 5),
            child: Container(
              height: 170.0.h,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20.0.r),
              ),
              //alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:8.0.h, left: 8.0.w),
                    child: Text(
                      "Ecounter with the Holy spirit",
                      style: TextStyle(fontSize: 20.0.sp, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Text("dghafmabdkjcJSZ c,kjc ldsvbkgcK>BDlk:HILDf.ndvldhvcujBN><DAfc LKhkhdkahfkuhakd akfhakjsnf,andlflkahdljfknaldkfhcuadhkfkjankn.......",
                      style: TextStyle(color: Colors.white),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.0.h),
                    child: Row(
                      //crossAxisAlignment: Cross,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: (){},
                            icon:
                            Icon(Icons.download_outlined, color: Colors.white,size: 40.0,)
                        ),
                        IconButton(
                          onPressed: (){},
                            icon:
                            Icon(Icons.play_circle_fill, color: Colors.white,size: 40.0,)
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
