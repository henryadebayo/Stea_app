

import 'dart:convert';

TestimonyModel testimonyFromJson(String atrbutes) => TestimonyModel.fromJson(json.decode(atrbutes));
String testimonyModelToJson(TestimonyModel data)=> json.encode(data.toJson());

class TestimonyModel {
  String id;
  String name;
  String details;
  TestimonyModel({
    this.id,
    this.name,
    this.details,
  });
  factory TestimonyModel.fromJson(Map<String,dynamic> json)=> TestimonyModel(
    name: json['name'],
    details: json['details'],
  );

  Map<String,dynamic> toJson()=>{
    'name':name,
    'details':details,
  };
}












List<TestimonyModel> tes = [
  TestimonyModel(
      name: "Henry Adebayo",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Dami",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Enike",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Daniel",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Mary Adebayo",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Grace Bidi",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Toke Olowo",
      details: "Thank God for life, and for all the good things coming my way"),
  TestimonyModel(
      name: "Tola Olowo",
      details: "Thank God for life, and for all the good things coming my way"),
];
