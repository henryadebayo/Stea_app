import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stea/data/carouselData.dart';
import 'package:stea/pages/testimonyPage.dart';
import 'package:stea/widgets/bottomNavigation.dart';
import 'package:stea/widgets/buildAppbarLogo.dart';
import 'package:stea/widgets/conWidgets.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/quickAccessContent.dart';

import 'AboutUs.dart';

class HomeScreen extends StatefulWidget {

  final String userName;
  HomeScreen({this.userName});

  @override
  _HomeScreenState createState() => _HomeScreenState(firstName:userName);
}

class _HomeScreenState extends State<HomeScreen> {

  void initState(){
  super.initState();
}
  final String firstName;
  _HomeScreenState({this.firstName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: KdarkBlueColour,
        title: Text(
          "STEA",
          style: TextStyle(fontFamily: KfontFamily, letterSpacing: 18.0, fontWeight: FontWeight.bold
          ,fontSize: 25.0),
        ),
        actions: <Widget>[
          buildShoppingCart(),
          SizedBox(width: 20.0),
        ],
      ),
     body:SingleChildScrollView(
      // scrollDirection: Axis.vertical,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child:Column(children:[
               Text("Hi $firstName",
               style: TextStyle(fontFamily: KfontFamily,
                 fontSize: 20.0,),
             ),
           Text(
             "Welcome",
             style: TextStyle(fontSize: 20.0),
           ),
             ]),
     ),
        SizedBox(height: 8.0),

           ListView(
             shrinkWrap: true,
             //scrollDirection: Axis.vertical,
             padding:EdgeInsets.only(left: 10.0, right: 10.0),
            children:[
            //  ...List.generate(carouselItems.length, (index) => null)

               // carouselItems.map((e) => CarouselSlider(items:[e],)).toList(),
              CarouselSlider(
                  scrollDirection: Axis.horizontal,
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16/9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds:800),
                  viewportFraction: 0.8,
                  items: CarouselData.carouselItems
              ),


              SizedBox(height:30.0),
              Text("Quick Access.",style:
              TextStyle(fontFamily:KfontFamily, fontSize:20.0),
              ),
              SizedBox(height: 10.0,),
              quickAccessIcon(),
              SizedBox(height:30.0),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AboutUs()));
                    },
                    child: Container(
                      height: 170.0,
                      width:double.infinity,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image: AssetImage("images/icon2.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),),
                      child: Center( child:
                      Text("sermons",style: TextStyle(color:Colors.white,
                        fontSize: 20.0,),)
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width:10.0),
                  Expanded(child: GestureDetector(
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => TestimonyPage()));
                    },
                    child: Container(
                      height: 170.0,
                      width:double.infinity,
                      decoration: BoxDecoration(
                          image:DecorationImage(
                            image: AssetImage("images/icon1.png"),
                            fit: BoxFit.cover,),
                          color: Color(0xFF0E3498),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Center( child:
                      Text("Prayers",style: TextStyle(color:Colors.white,
                          fontSize: 20.0, fontFamily: "GoogleSans"),)
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              ),
              SizedBox(height:30.0),
             ],
           ),
         ],
       ),
     ),
      //bottomNavigationBar: BottomNavigation(),
    );
  }
}

