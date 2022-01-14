import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stea/models/testimonyModel.dart';

class TestimonyScopedModel extends Model{
  List<TestimonyModel> _testimony = [];
  bool _isloading = false;
   bool get isLosding{
     return _isloading;
   }
    set setIsLoading(bool){
     _isloading = false;
   }

   List<TestimonyModel> get testimonys{
     return List.from(_testimony);
   }
  int get testimonyLenght {
    return _testimony.length;
  }
   //
   // Future<bool> addTestimony(TestimonyModel testimony) async{
   //   _isloading = true;
   //   notifyListeners();
   //   try{
   //     final Map<String, dynamic> testimonyData = {
   //       'name': testimony.name,
   //       'detail':testimony.details,
   //     };
   //   }catch(e){}
   //
   // }
   //


}