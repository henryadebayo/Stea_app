import 'dart:convert';

import 'package:flutter/material.dart';

UserModel userModelFromJson(String attribute)=> UserModel.fromJson(jsonDecode(attribute));
String userModelToJson(UserModel data)=> json.encode(data.toJson());
class UserModel {
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String address;
  final String phoneNumber;


  UserModel(
      {
        this.address,
        this.emailAddress,
        this.firstName,
        this.lastName,
        this.phoneNumber,
      });

  factory UserModel.fromJson(Map<String, dynamic> json)=> UserModel(
    firstName: json["firstname"],
    lastName: json["lastname"],
    emailAddress: json["email"],
    phoneNumber:  json["phone"],
  );
  Map<String, dynamic> toJson()=>{
    'firstname':firstName,
    'lastname':lastName,
    'email':emailAddress,
    'phone':phoneNumber,

  };
}
