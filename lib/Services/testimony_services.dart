import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/utils/constants.dart';
import 'package:http/http.dart'as http;
import 'package:stea/widgets/const.dart';


class TestimonyService {
  bool loading;



  static Future<Object> getTestimonies()async{
    try{
      var url = Uri.parse(TESTIMONY_URL);
      var response = await http.get(url);
      if(response.statusCode == 200){
        final Map<String, dynamic > testimonyPayload = jsonDecode(response.body);
        List<TestimonyModel> test = [];
        var testt = test.reversed;
        testimonyPayload.forEach((String id, dynamic payLoadData) {
          TestimonyModel _testimonies = TestimonyModel(
            id: payLoadData["id"],
            name: payLoadData["name"],
            details: payLoadData["details"],
          );
         test.add(_testimonies);
        });

     return Success(response:testt.toList());
      }
      return Failure(code:HTTPEXCEPTION, errorResponse: "invalid response");
    }on HttpException{
      return Failure(code:NO_INTERNET, errorResponse: "No Internet Connection");
    }
    catch(e){
      //jdjlb
    }
  }


  Future<bool> sendTes(TestimonyModel testimony) async {
     loading = true;
     //notifyListeners();
      try {

        final Map<String, dynamic> tdata = {
          "name": testimony.name,
          "details": testimony.details,
        };
        http.Response response = await http.post(Uri.parse(TESTIMONY_URL),
            body: json.encode(tdata));
        print(response.statusCode);
        print(response.body);
        loading = false;
        //notifyListeners();
        return Future.value(true);
      } catch (e) {
      loading=false;
        //notifyListeners();
        print("connection error $e");
        return Future.value(false);

      }
    }

//
//    Future<Object> postTestimony(TestimonyModel testimony)async{
//     loading = true;
//
//     try {
//       final Map<String, dynamic> tdata = {
//           "name":testimony.name,
//           "details": testimony.details,
//         };
//
//       var Url = Uri.parse(TESTIMONY_URL);
//       var response = await http.post(Url);
//       body: json.encode(tdata);
//       if(response.statusCode == 200){
//         loading = false;
//         return Success(response:
//                 SnackBar(
//                   backgroundColor: KdarkBlueColour,
//                   content: Text("Testimony uploaded successfully"),
//                   duration: Duration(
//                     seconds: 2
//                   ),
//                 ),
//         );
//       }
//     }catch(e){
//       print("${e}");
//       //on Exception
//     }
// return null;
//
//   }


}