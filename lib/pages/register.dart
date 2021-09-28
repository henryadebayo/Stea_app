import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stea/pages/home.dart';
import 'package:stea/widgets/bottomNavigation.dart';
import 'alreadyMember.dart';

class RegisterPage extends StatefulWidget {
 

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _firstname;
  String _lastName;
  String _emailAddress;
  String _phoneNumber;
  String _address;

final formKey = GlobalKey<FormState>();
final mainKey = GlobalKey<ScaffoldState>();

  // ignore: non_constant_identifier_names
  Widget _buidFIrstNameFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0.r),
      child: TextFormField(
        expands: false,

        decoration: InputDecoration(
          border: InputBorder.none,
          //TextInoutBorder.none,
          contentPadding:
           EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.0.h),
          labelText: "First name",
          hintStyle: TextStyle(
              color: Colors.black12, fontSize: 14.0.sp, fontFamily: "GoogleSans"),
        ),
        
        onSaved: (firstName) {
          _firstname = firstName;
        },
        validator: (String firstName) {
          String errorMessage;
          if (firstName.isEmpty) {
            return errorMessage = "please fill in your first name";
          }
        },
      ),
    );
  }

  Widget _buidLastNameFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0.r),
      child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            //TextInoutBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.0.h),
            labelText: "Last name",
            hintStyle: TextStyle(
                color: Colors.black12,
                fontSize: 14.0.sp,
                fontFamily: "GoogleSans"),
          ),
          onSaved: (String lastName) {
            lastName = _lastName;
          },
          // ignore: missing_return
          validator: (String lastName) {
            if (lastName.isEmpty) {
              String errorMessage;
              errorMessage = "please fill in your last name";
              return errorMessage;
            }
          }),
    );
  }
  

  Widget _buidEmailAddressFormFeild() {
    return Material(
      color: Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0.r),
      child: TextFormField(
        autocorrect: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          //TextInoutBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.0.h),
          labelText: "Email address ",
          hintStyle: TextStyle(
              color: Colors.black12, fontSize: 14.0.sp, fontFamily: "GoogleSans"),
        ),
        onSaved: (String email) {
          email = _emailAddress;
        },
        validator: (String email) {
          String errorMessage;
          if (!email.contains("@")) {
            errorMessage = "email address is incorrect";
          }
          if (email.isEmpty) {}
          return errorMessage;
        },
      ),
    );
  }

  Widget _buidPhoneNumberFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0.r),
      child: TextFormField(

          /// maxLength: 11,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            //TextInoutBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.0.h),
            labelText: "Phone Number",
            hintStyle: TextStyle(
                color: Colors.black12,
                fontSize: 14.0.sp,
                fontFamily: "GoogleSans"),
          ),
          onSaved: (String phoneNumber) {
            phoneNumber = _phoneNumber;
          },
          validator: (String phoneNumber) {
            if (phoneNumber.isEmpty) {
              return "please fill in your last name";
            }
          }),
    );
  }

  Widget _buidAddressFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0.r),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          //TextInoutBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.0.h),
          labelText: "Address",
          hintStyle: TextStyle(
              color:Color(0xFF0E3E3E3), fontSize: 14.0.sp, fontFamily: "GoogleSans"),
        ),
        onSaved: (String address) {
          address = _address;
        },
        validator: (String address) {
          //String errorMessage;
          if (address.isEmpty) {
            return " Address is required";
          }
        },
      ),
    );
  }

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
                   child: Column(
                     children:<Widget>[
                _buidFIrstNameFormFeild(),
                SizedBox(
                  height: 30.h,
                ),
                _buidLastNameFormFeild(),
                SizedBox(
                  height: 30.h,
                ),
                _buidEmailAddressFormFeild(),
                SizedBox(
                  height: 30.h,
                ),
                _buidPhoneNumberFormFeild(),
                SizedBox(
                  height: 30.h,
                ),
                _buidAddressFormFeild(),
                ]),
                ),
                SizedBox(
                  height: 40.0.h,
                ),
                InkWell(
                    onTap: onPressed,
                    onDoubleTap: ()
                    {  Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));},
                    child: Container(
                      height: 60.0.h,
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
                  height: 30.h,
                ),
                Row(
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
                          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>AlreadyMember()));
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
  void onPressed(){
      var form = formKey.currentState;
      if(form.validate()) {
      form.save();
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) =>
              BottomNavigationWidget(userName: _firstname)));
    }
  }
}
