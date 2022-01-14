import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:http/http.dart'as http;

String StsCode;
String name;
String details;
String url = "https://stea-880c0-default-rtdb.firebaseio.com/testimonies.json";


Future<TestimonyModel> sendTes(TestimonyModel testimony) async{
  try{
http.Response response = await http.post(Uri.parse(url),
 body:  jsonEncode({
  'name':testimony.name,
   'details':testimony.details,
 })
);
print(response.statusCode);
print(response);
}catch(e){
print(e);
  }
  }