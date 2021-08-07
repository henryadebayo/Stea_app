import 'package:flutter/material.dart';

// ignore: camel_case_types
class RegisterModel {
  final Function getNewUser;
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String address;
  final int phoneNumber;

  RegisterModel(
    {this.address,
      this.emailAddress,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.getNewUser
    });
}
