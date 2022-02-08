import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/utils/constants.dart';
import 'package:http/http.dart'as http;
import 'package:stea/widgets/const.dart';


class TestimonyService extends ChangeNotifier{
  bool _loading = false;
   get loading => _loading;

   setLoading(bool loading){
     _loading = loading;
     notifyListeners();
   }



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


  Future<bool> sendTes(String name,details) async {
   setLoading(true);
    try {

      final Map<String, dynamic> tdata = {
        "name": name,
        "details":details,
      };
      http.Response response = await http.post(Uri.parse(TESTIMONY_URL),
          body: json.encode(tdata));
      print(response.statusCode);
      print(response.body);

      // loading = false;
      //notifyListeners();
      if(response.statusCode == 200) {
        setLoading(false);
      }
    } catch (e) {
     setLoading(false);
      print("${e}");
      print("connection error $e");
      return Future.value(false);

    }
  }

//
//    Future<Object> postTestimony(String name, details)async{
//     loading = true;
//     var Url = Uri.parse(TESTIMONY_URL);
//
//     try {
//       final Map<String, dynamic> tdata = {
//           "name":name,
//           "details": details,
//         };
//
//       body: json.encode(tdata);
//       var response = await http.post(Url);
//
//       print(response.statusCode);
//       print(response.body);
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
//
//
}