
import 'dart:convert';

TestimonyModel testimonyModelFromJson(String str) => TestimonyModel.fromJson(json.decode(str));

String testimonyModelToJson(TestimonyModel data) => json.encode(data.toJson());

class TestimonyModel {
  TestimonyModel({
    this.id,
    this.details,
    this.name,
  });

  String id;
  String details;
  String name;

  factory TestimonyModel.fromJson(Map<String, dynamic> json) => TestimonyModel(
    id: json["id"],
    details: json["details"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "details": details,
    "name": name,
  };
}
//
// class Id {
//   Id({
//     this.details,
//     this.name,
//   });
//
//   String details;
//   String name;
//
//   factory Id.fromJson(Map<String, dynamic> json) => Id(
//     details: json["details"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "details": details,
//     "name": name,
//   };
// }































//
//
// import 'dart:convert';
//
// TestimonyModel testimonyFromJson(String atrbutes) => TestimonyModel.fromJson(json.decode(atrbutes));
// String testimonyModelToJson(TestimonyModel data)=> json.encode(data.toJson());
//
// class TestimonyModel {
//   String id;
//   String name;
//   String details;
//   TestimonyModel({
//     this.id,
//     this.name,
//     this.details,
//   });
//   factory TestimonyModel.fromJson(Map<String,dynamic> json)=> TestimonyModel(
//     name: json['name'],
//     details: json['details'],
//   );
//
//   Map<String,dynamic> toJson()=>{
//     'name':name,
//     'details':details,
//   };
// }
//