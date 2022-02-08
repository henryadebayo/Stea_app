import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/utils/constants.dart';


class SendTestimonyService{


  Future<bool> sendTes(String name,details) async {
  //  loading = true;
    //notifyListeners();
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
      return Future.value(true);
    } catch (e) {
      //loading=false;
      //notifyListeners();
      print("connection error $e");
      return Future.value(false);

    }
  }

}