//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stea/pages/AboutUs.dart';
import 'package:stea/pages/Notification.dart';
import 'package:stea/widgets/buildAppbarLogo.dart';

class MyHomePage extends StatefulWidget {
   final String name;
  MyHomePage({this.name});
  @override
  _MyHomePageState createState() => _MyHomePageState(name:name);
}

class _MyHomePageState extends State<MyHomePage> {

  final String name;
  _MyHomePageState({this.name});

Future<bool>_onBackPressed(){
  return showDialog(
  context: context ,
  builder: (BuildContext context)=> AlertDialog(
    title: Text("Do you want to Exit App ?"),
    actions:<Widget>[FlatButton(
      onPressed: ()=>Navigator.pop(context,false),
      child: Text("No"),),
      FlatButton(
      onPressed: ()=>Navigator.pop(context,true),
      child: Text("Yes"),),
    ]
  ),
  );
}
 
  @override
  Widget build(BuildContext context) {

        return WillPopScope(
          onWillPop: _onBackPressed,
                  child: Scaffold(
            appBar: AppBar(
              
              // primary: true,
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: Color(0xFF0E3498),
              title: Text(
                "STEA",
                style: TextStyle(fontFamily: " GoogleSans", letterSpacing: 20.0),
              ),
              actions: <Widget>[
                buildShoppingCart(),
                SizedBox(width: 20.0),
              ],
            ),
            body: SafeArea(
              child: ListView(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                children: <Widget>[
                  Column(
                    //mainAxisAlignment:MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hi $name.",
                    style: TextStyle(fontFamily: "GoogleSans", fontSize: 20.0),
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 20.0),
//              Comtainer(),
                ],
              ),
              SizedBox(height:10.0),
                 CarouselSlider(
                   scrollDirection: Axis.horizontal,
                  height: 180.0,
                   enlargeCenterPage: true,
                   autoPlay: true,
                   aspectRatio: 16/9,
                  // autoPlayInterval: Duration(milliseconds:800),
                   autoPlayCurve: Curves.fastOutSlowIn,
                   autoPlayAnimationDuration: Duration(milliseconds:800),
                   viewportFraction: 0.8,
                   items: <Widget>[
                     Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea2.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     ),
                      Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea4.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     ),
                      Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea5.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     ),
                      Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea3.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     ),
                      Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     )
                   ],
                   ),

                  SizedBox(height:30.0),
                  Text("Quick Access.",style: TextStyle(fontFamily:"GoogleSans", fontSize:20.0),
                  ),
                  SizedBox(height: 10.0,),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                  height: 100.0,
                  width: 100.0,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3E3E3),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                  SizedBox(width: 10.0,),
                               Container(
                  height: 100.0,
                  width: 100.0,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3E3E3),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                  SizedBox(width: 10.0,),
                               Container(
                  height: 100.0,
                  width: 100.0,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3E3E3),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                  SizedBox(width: 10.0,),
                               Container(
                  height: 100.0,
                  width: 100.0,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3E3E3),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                  SizedBox(width: 10.0,),
                               Container(
                  height: 100.0,
                  width: 100.0,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3E3E3),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                  SizedBox(width: 10.0,),
                  //SizedBox(width: 50.0,),
                               Container(
                  height: 100.0,
                  width: 100.0,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Color(0xFF0E3E3E3),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  ),
                          ],
                        ),
                  ),
                   
                   SizedBox(height:30.0),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         InkWell(
                           //color: Colors.white,
                           onTap:(){
                             Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => NotificationScreen() ));
                           },
                             child: Container(
                              height: 170.0,
                              width:180,
                  decoration: BoxDecoration(
                     image:DecorationImage(
                            image: AssetImage("images/icon2.png"),
                           fit: BoxFit.cover,
                      //color: Color(0xFF0E3498),
                  ),
                   borderRadius: BorderRadius.circular(10.0),),
                  
                   child: Center( child:
                    Text("sermons",style: TextStyle(color:Colors.white, fontSize: 20.0, fontFamily: "GoogleSans"),)
                  ),
                           ),
                         ),
                         SizedBox(width:10.0),
                         GestureDetector(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AboutUs()));
                           },
                                                    child: Container(
                              height: 170.0,
                  width:180,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                            image: AssetImage("images/icon1.png"),
                           fit: BoxFit.cover,),
                      color: Color(0xFF0E3498),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Center( child:
                    Text("Prayers",style: TextStyle(color:Colors.white, fontSize: 20.0, fontFamily: "GoogleSans"),)
                  ),
                           ),
                         ),
                       ],
                     ),
                      SizedBox(height:30.0),
                 CarouselSlider(
                   scrollDirection: Axis.horizontal,
                  height: 180.0,
                   enlargeCenterPage: true,
                   autoPlay: true,
                   aspectRatio: 16/9,
                  // autoPlayInterval: Duration(milliseconds:800),
                   autoPlayCurve: Curves.fastOutSlowIn,
                   autoPlayAnimationDuration: Duration(milliseconds:800),
                   viewportFraction: 0.8,
                   items: <Widget>[
                     Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea4.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     ),
                      Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea5.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     ),
                      Container(
                       decoration:
                        BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/stea.jpg"),
                           fit: BoxFit.cover,
                          ),
                        borderRadius: BorderRadius.circular(10.0)
                       ) 
                     )
                   ],
                   ),
            ],
          ),
      ),
    ),
        );
  }
}

//resizeToAvoidBottomPadding: true,