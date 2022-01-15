import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:http/http.dart'as http;

List<TestimonyModel> _testimonis = [];
List<TestimonyModel> get testimonis {
  return List.from(_testimonis);
}

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
  //int testimonyIndex = testimonis
try {
  final http.Response response = await http.get(Uri.parse(url));
  final Map<String, dynamic> responseData = json.decode(response.body);

  responseData.forEach((String id, dynamic tdata) {
    //TestimonyModel theTestimony = getFoodTestimonyWithId(tdata);

    TestimonyModel testimonies = TestimonyModel(
      id: id,
      name: tdata["name"],
      details: tdata["details"],
    );
    _testimonis.add(testimonies);
  });
}catch (e){
  print(e);
}
  return fetchTestimonies();

}

TestimonyModel getFoodTestimonyWithId(String tdata) {
  TestimonyModel testimonyModel;
  for(int i = 0; i< _testimonis.length; i++){
    if(_testimonis[i].id == tdata){
      testimonyModel = _testimonis[i];
      break;
    }
    return testimonyModel;
  }
}