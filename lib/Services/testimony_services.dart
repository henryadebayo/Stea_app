import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/utils/constants.dart';
import 'package:http/http.dart'as http;


class TestimonyService {
  static Future<Object> getTestimonies()async{
    try{
      var url = Uri.parse(TESTIMONY_URL);
      var response = await http.get(url);
      if(response.statusCode == 200){
     return Success(response:testimonyModelFromJson(response.body));
      }
      return Failure(code:HTTPEXCEPTION, errorResponse: "invalid response");
    }on HttpException{
      return Failure(code:NO_INTERNET, errorResponse: "No Internet Connection");
    }
    catch(e){
      //jdjlb
    }
  }
}