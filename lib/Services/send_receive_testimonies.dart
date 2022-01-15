import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:http/http.dart'as http;

String url = "https://stea-880c0-default-rtdb.firebaseio.com/testimonies.json";

//Sending Testimonies to DataBase
Future<TestimonyModel> sendTes(TestimonyModel testimony) async{

  try{
    final Map<String, dynamic> tdata ={
      "name": testimony.name,
      "details":testimony.details,
    };
    http.Response response = await http.post(Uri.parse(url),
        body:json.encode(tdata));

print(response.statusCode);
print(response.body);
}catch(e){
print(e);
  }
  }
  
  // Receiveing testimonies from database 

Future<TestimonyModel> fetchTestimonies()async{
  final http.Response response = await http.get(Uri.parse(url));
  final Map<String, dynamic> responseData = json.decode(response.body);

  responseData.forEach((String id, dynamic tdata){
    TestimonyModel testimonies = TestimonyModel(
      id: id,
      name: tdata["name"],
      details: tdata["details"],
    );
  });

  return fetchTestimonies();
}