import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stea/models/testimonyModel.dart';

class TestimonyScopedModel extends Model{
  List<TestimonyModel> _testimony = [];
  bool _isloading = false;
   bool get isLosding{
     return _isloading;
   }
}