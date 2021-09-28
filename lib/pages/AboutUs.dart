import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/conWidgets.dart';
import 'package:stea/widgets/const.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
         backgroundColor: KdarkBlueColour,
        title:Title(color: Colors.white,
        child: Text("About Us"),)
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        children: [ Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
             height:280.0.h,
                width:double.infinity.w,
              decoration:BoxDecoration(
                  image:DecorationImage(
                  image: AssetImage("images/BAM3232.jpg"),
          fit: BoxFit.cover,
        ),
              ),

          alignment: Alignment.topCenter,

              child:Column(

                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                    child: new Container(
                      decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    ),
                  ),
               /*BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),*/
                  Container(
                   height: 200.0.h,
                    width: 200.0.w,
                    decoration:BoxDecoration(
                      image: DecorationImage( image: AssetImage("images/stealogo.png"),
                      fit:BoxFit.cover,
                      //color: Colors.green,
                    ),
                      borderRadius: BorderRadius.circular(100.0.r),

                  ),
            ),
                  Text("StrongTower Evangelical Assembly",textAlign:TextAlign.center, style: TextStyle(color:Colors.white, fontSize:20.0.sp,
                      fontWeight:FontWeight.w900,
                    //letterSpacing: 5.0,
                  ),
                  ),
                ],

              ),

            ),
            SizedBox(height:15.0.h),

              aboutUsNameH(labelName: "Bishop Ralph Olufemi Olowo",),

            SizedBox(height:5.0.h),
            aboutUsImageContainer(
              imageName: "images/DAD5.jpg",
            ),
            aboutUsInfo(),
            SizedBox(height: 50.0.h,),
            RoundWhiteButton(
              label: "Know More",
              height: 50.0.h,
              width:200.0.w,
            ),
            SizedBox(height: 50.0.h,),
            aboutUsNameH(labelName: "Rev.Lois Ibilola Olowo",),
            SizedBox(height:5.0.h),
            aboutUsImageContainer(imageName: "images/mum2.jpg"),
            aboutUsInfo(),
            SizedBox(height: 50.0.h,),
            RoundWhiteButton(
              label: "Know More",
              height: 50.0.h,
              width:200.0.w,
            ),
            SizedBox(height: 50.0.h,),
            aboutUsNameH(labelName: "Bishop David Bakare",),
            SizedBox(height:5.0.h),
            aboutUsImageContainer(imageName: "images/bb.jpg"),
            aboutUsInfo(),
            SizedBox(height: 50.0.h,),
            RoundWhiteButton(
              label: "Know More",
              height: 50.0.h,
              width:200.0.w,
            ),


          ],
        ),
          SizedBox(height: 100.0.h,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Icon(
               FontAwesomeIcons.instagram,
                color:KdarkBlueColour,
                size: 30.0,
              ),
              SizedBox(width: 10.0.w,),
              Icon(
                FontAwesomeIcons.facebook,
                color:KdarkBlueColour,
                size: 30.0,
              ),
              SizedBox(width: 10.0.w,),
              Icon(
                FontAwesomeIcons.twitter,
                color:KdarkBlueColour,
                size: 30.0,
              ),
              SizedBox(width: 10.0.w,),
              Icon(
                FontAwesomeIcons.youtube,
                color:KdarkBlueColour,
                size: 30.0,
              ),
            ],
          ),
          SizedBox(height: 100.0.h,),

          RoundWhiteButton(
            label: "About Developer",
            height: 70.0.h,
          ),
        ],
      ),
    );
  }
}


