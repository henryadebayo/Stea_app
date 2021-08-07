
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
             height:280.0,
                width:double.infinity,
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
                   height: 200.0,
                    width: 200.0,
                    decoration:BoxDecoration(
                      image: DecorationImage( image: AssetImage("images/stealogo.png"),
                      fit:BoxFit.cover,
                      //color: Colors.green,
                    ),
                      borderRadius: BorderRadius.circular(100.0),

                  ),
            ),
                  Text("StrongTower Evangelical Assembly",textAlign:TextAlign.center, style: TextStyle(color:Colors.white, fontSize:20.0,
                      fontWeight:FontWeight.w900,
                    //letterSpacing: 5.0,
                  ),
                  ),
                ],

              ),

            ),
            SizedBox(height:15.0),

              aboutUsNameH(labelName: "Bishop Ralph Olufemi Olowo",),

            SizedBox(height:5.0),
            aboutUsImageContainer(
              imageName: "images/DAD5.jpg",
            ),
            aboutUsInfo(),
            SizedBox(height: 50.0,),
            RoundWhiteButton(
              label: "Know More",
              height: 50.0,
              width:200.0,
            ),
            SizedBox(height: 50.0,),
            aboutUsNameH(labelName: "Rev.Lois Ibilola Olowo",),
            SizedBox(height:5.0),
            aboutUsImageContainer(imageName: "images/mum2.jpg"),
            aboutUsInfo(),
            SizedBox(height: 50.0,),
            RoundWhiteButton(
              label: "Know More",
              height: 50.0,
              width:200.0,
            ),
            SizedBox(height: 50.0,),
            aboutUsNameH(labelName: "Bishop David Bakare",),
            SizedBox(height:5.0),
            aboutUsImageContainer(imageName: "images/bb.jpg"),
            aboutUsInfo(),
            SizedBox(height: 50.0,),
            RoundWhiteButton(
              label: "Know More",
              height: 50.0,
              width:200.0,
            ),


          ],
        ),
          SizedBox(height: 100.0,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Icon(
               FontAwesomeIcons.instagram,
                color:KdarkBlueColour,
                size: 30.0,
              ),
              SizedBox(width: 10.0,),
              Icon(
                FontAwesomeIcons.facebook,
                color:KdarkBlueColour,
                size: 30.0,
              ),
              SizedBox(width: 10.0,),
              Icon(
                FontAwesomeIcons.twitter,
                color:KdarkBlueColour,
                size: 30.0,
              ),
              SizedBox(width: 10.0,),
              Icon(
                FontAwesomeIcons.youtube,
                color:KdarkBlueColour,
                size: 30.0,
              ),
            ],
          ),
          SizedBox(height: 100.0,),

          RoundWhiteButton(
            label: "About Developer",
            height: 70.0,
          ),
        ],
      ),
    );
  }
}


