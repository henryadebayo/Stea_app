import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/Services/send_receive_testimonies.dart';
import 'package:stea/pages/testimonyPage.dart';
import 'package:stea/widgets/buildAppbarLogo.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/quickAccessContent.dart';

import 'AboutUs.dart';

class HomeScreen extends StatefulWidget {
  final String userName;
  HomeScreen({this.userName});

  @override
  _HomeScreenState createState() => _HomeScreenState(firstName: userName);
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
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
          style: TextStyle(
              fontFamily: KfontFamily,
              letterSpacing: 18.0,
              fontWeight: FontWeight.bold,
              fontSize: 20.0.sp),
        ),
        actions: <Widget>[
          buildShoppingCart(),
          SizedBox(width: 20.0.w),
        ],
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: Column(children: [
                Text(
                  "Hi $firstName",
                  style: TextStyle(
                    fontFamily: KfontFamily,
                    fontSize: 15.0.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontSize: 20.0.sp),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 8.0.h),
            ListView(
              shrinkWrap: true,
              //scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
              children: [
                //  ...List.generate(carouselItems.length, (index) => null)

                // carouselItems.map((e) => CarouselSlider(items:[e],)).toList(),
                // CarouselSlider(
                //   scrollDirection: Axis.horizontal,
                //   height: 180.0.h,
                //   enlargeCenterPage: true,
                //   autoPlay: true,
                //   aspectRatio: 16 / 9,
                //   autoPlayCurve: Curves.fastOutSlowIn,
                //   autoPlayAnimationDuration: Duration(milliseconds: 800),
                //   viewportFraction: 0.8,
                //   // items:[ CarouselData.carouselItems]
                // ),

                SizedBox(height: 30.0.h),
                Text(
                  "Quick Access.",
                  style: TextStyle(fontFamily: KfontFamily, fontSize: 20.0.sp),
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                quickAccessIcon(),
                SizedBox(height: 30.0.h),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => AboutUs()));
                          },
                          child: Container(
                            height: 150.0.h,
                            width: double.infinity.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/icon2.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                            child: Center(
                                child: Text(
                              "sermons",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0.sp,
                              ),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0.w),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TestimonyPage()));
                          },
                          child: Container(
                            height: 150.0.h,
                            width: double.infinity.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/icon1.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0xFF0E3498),
                                borderRadius: BorderRadius.circular(10.0.r)),
                            child: Center(
                                child: Text(
                              "Prayers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0.sp,
                                  fontFamily: "GoogleSans"),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0.h),
              ],
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigation(),
    );
  }
}
