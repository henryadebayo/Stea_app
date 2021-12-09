import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String _lastName;
String _emailAddress;
String _phoneNumber;
String _address;

// ignore: non_constant_identifier_names
Widget buidFIrstNameFormFeild(String _firstname) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: BorderSide(
          color: Color(0xFF0E3E3E3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0.r),
        //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintText: "label",
      hintStyle: TextStyle(fontSize: 16.sp),
    ),
    onChanged: (firstName) {
      _firstname = firstName;
    },
    validator: (String firstName) {
      String errorMessage;
      if (firstName.isEmpty) {
        return errorMessage = "please fill in your first name";
      }
    },
  );
}

Widget buidLastNameFormFeild() {
  return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: BorderSide(
            color: Color(0xFF0E3E3E3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0.r),
          //borderSide: BorderSide(color: Colors.black),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintText: "label",
        hintStyle: TextStyle(fontSize: 16.sp),
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
      });
}

Widget buidEmailAddressFormFeild() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: BorderSide(
          color: Color(0xFF0E3E3E3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0.r),
        //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintText: "label",
      hintStyle: TextStyle(fontSize: 16.sp),
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
  );
}

Widget buidPhoneNumberFormFeild() {
  return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          borderSide: BorderSide(
            color: Color(0xFF0E3E3E3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0.r),
          //borderSide: BorderSide(color: Colors.black),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintText: "label",
        hintStyle: TextStyle(fontSize: 16.sp),
      ),
      onSaved: (String phoneNumber) {
        phoneNumber = _phoneNumber;
      },
      validator: (String phoneNumber) {
        if (phoneNumber.isEmpty) {
          return "please fill in your last name";
        }
      });
}

Widget buidAddressFormFeild() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0.r),
        borderSide: BorderSide(
          color: Color(0xFF0E3E3E3),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0.r),
        //borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintText: "label",
      hintStyle: TextStyle(fontSize: 16.sp),
    ),
    onSaved: (String address) {
      address = _address;
    },
    validator: (String address) {
      if (address.isEmpty) {
        return "Address is required";
      }
    },
  );
}
