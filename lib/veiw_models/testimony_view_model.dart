import 'package:flutter/material.dart';
import 'package:stea/models/testimonyModel.dart';

class TestimonyVeiwModel extends ChangeNotifier{

  bool _loading = false;
 List<TestimonyModel> _testimonyModel = [];


 bool get loading => _loading;
 List<TestimonyModel> get testimonyModel => _testimonyModel;


 setLoading(bool loading)async{
   _loading = loading;
   notifyListeners();
 }

 setTestimonyModel(List<TestimonyModel> testimonyModel ){
   _testimonyModel = testimonyModel;
 }


}