import 'package:flutter/material.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/const.dart';
import 'register.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final registerButtonColour =  Colors.blue[900];

class MyWelcomePage extends StatefulWidget {
  @override
  _MyWelcomePageState createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80.0, bottom: 80.0),

              child: Text("Welcome !",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 40.0.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: KfontFamily )),
              decoration: BoxDecoration(),
            ),
            Center(
              child: Container(
                height: 250.0.h,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: KsteaLogo,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150.0.h,
            ),
            welcomeButton(
              containerWidth: 100.0.w,
                containerHeight: 60.0.h,
                labelText: "Register",
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)
                  => RegisterPage()));
                }
            ),
            Center(
                child: Text(
              "Register",
              style: TextStyle(
                  fontFamily: "GoogleSans", color: Colors.white),
            ),
            ),
            SizedBox(
              height: 10.0.h,
            ),

            welcomeButton(
              containerHeight: 60.0.h,
              containerWidth: 300.0.w,
              labelText: "Already a member",
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}

