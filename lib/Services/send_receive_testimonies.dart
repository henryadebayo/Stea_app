import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:http/http.dart'as http;

class TestimonyScopedModel extends Model{
  String url = "https://stea-880c0-default-rtdb.firebaseio.com/testimonies.json";


  List<TestimonyModel> _testimonyItems = [];
  List<TestimonyModel> get testimonis {
    return List.from(_testimonyItems);
  }
  bool _isloading = true;

  bool get isLoading{
    return _isloading;
  }


  List<TestimonyModel> get testimonys{
    return List.from(_testimonyItems);
  }
  int get testimonyLenght {
    return _testimonyItems.length;
  }

//Sending Testimonies to DataBase

    Future<bool> sendTes(TestimonyModel testimony) async {
     _isloading = true;
     notifyListeners();
      try {

        final Map<String, dynamic> tdata = {
          "name": testimony.name,
          "details": testimony.details,
        };
        http.Response response = await http.post(Uri.parse(url),
            body: json.encode(tdata));

        print(response.statusCode);
        print(response.body);
        _isloading = false;
        notifyListeners();
        return Future.value(true);
      } catch (e) {
        _isloading=false;
        notifyListeners();
        print("connection error $e");
        return Future.value(false);

      }
    }

    // Receiveing testimonies from database

    Future<bool> fetchTestimonies() async {
      //int testimonyIndex = testimonis
      try {
        final http.Response response = await http.get(Uri.parse(url));
        List<TestimonyModel>_ftestimony = [];
        final Map<String, dynamic> responseData = json.decode(response.body);

        responseData.forEach((String id, dynamic tdata) {
          //TestimonyModel theTestimony = getFoodTestimonyWithId(tdata);

          TestimonyModel testimoniess = TestimonyModel(
            id: id,
            name: tdata["name"],
            details: tdata["details"],
          );
          _testimonyItems.add(testimoniess);
        });
        _testimonyItems = _ftestimony;
      } catch (e) {
        print(e);
      }
      return fetchTestimonies();
    }

    TestimonyModel getFoodTestimonyWithId(String tdata) {
      TestimonyModel testimonyModel;
      for (int i = 0; i < _testimonyItems.length; i++) {
        if (_testimonyItems[i].id == tdata) {
          testimonyModel = _testimonyItems[i];
          break;
        }
        return testimonyModel;
      }
    }
  }