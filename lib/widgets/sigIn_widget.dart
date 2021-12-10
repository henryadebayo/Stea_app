import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String lastName;
String emailAddress;
String phoneNumber;
String address;

// ignore: non_constant_identifier_names
Widget buidFIrstNameFormFeild({String name}) {
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
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
    onSaved: (firstName) {
      name = firstName;
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
        hintText: "last name",
        hintStyle: TextStyle(fontSize: 14.sp),
      ),
      onSaved: (String lastNamee) {
        lastNamee = lastName;
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
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintText: "email address",
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
    onSaved: (String email) {
      email = emailAddress;
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
      maxLength: 13,
      keyboardType: TextInputType.phone,
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
        hintText: "+234",
        hintStyle: TextStyle(fontSize: 14.sp),
      ),
      onSaved: (String phoneNumberr) {
        phoneNumberr = phoneNumber;
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
      hintText: "Address",
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
    onSaved: (String addresss) {
      addresss = address;
    },
    validator: (String address) {
      if (address.isEmpty) {
        return "Address is required";
      }
    },
  );
}
