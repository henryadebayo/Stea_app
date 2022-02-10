import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/pages/home.dart';
import 'package:stea/widgets/bottomNavigation.dart';
import 'package:stea/widgets/sigIn_widget.dart';

import 'alreadyMember.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _firstname;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white70,
        // resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            //height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Fill In Your Details ",
                  style: TextStyle(
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.blue[900]),
                ),
                SizedBox(height: 50.0.h),
                Form(
                  key: formKey,
                  child: Column(children: <Widget>[
                    buidFIrstNameFormFeild(name: _firstname),
                    SizedBox(
                      height: 20.h,
                    ),
                    buidLastNameFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buidEmailAddressFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buidPhoneNumberFormFeild(),
                    SizedBox(
                      height: 20.h,
                    ),
                    buidAddressFormFeild(),
                  ]),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                InkWell(
                    onTap: onPressed,
                    onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => BottomNavigationWidget()));
                      //Navigator.of(context).popUntil((route) => false);
                    },
                    child: Container(
                      height: 50.0.h,
                      // width: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(04.0.r)),
                      child: Center(
                          child: Text(
                        "Become a Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //SizedBox(width: 10.0,),
                    Center(
                      child: Text(
                        "Already a",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5.0.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AlreadyMember()));
                      },
                      child: Text(
                        "Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans",
                            color: Colors.indigo[800]),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      //var _firstname;
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              BottomNavigationWidget(userName: _firstname)));
    }
  }
}
