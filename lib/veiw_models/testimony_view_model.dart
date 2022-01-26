import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/Services/testimony_services.dart';
import 'package:stea/models/testimonyModel.dart';

class TestimonyVeiwModel extends ChangeNotifier{

  bool _loading = false;
 List<TestimonyModel> _testimonyModel = [];
 TestimonyError _testimonyError;

TestimonyVeiwModel(){
  getTestimony();
}

 bool get loading => _loading;
 List<TestimonyModel> get testimonyModel => _testimonyModel;
 TestimonyError get testimonyError => _testimonyError;


 setLoading(bool loading)async{
   _loading = loading;
   notifyListeners();
 }

 setTestimonyModel(List<TestimonyModel> testimonyModel ){
   _testimonyModel = testimonyModel;
 }
  setTestimonyError(TestimonyError testimonyError) {
   _testimonyError = testimonyError;
  }


 getTestimony()async{
   setLoading(true);
   var response = await TestimonyService
   .getTestimonies();
   if(response is Success){
     setTestimonyModel(response.response as List<TestimonyModel>);
   }
   if(response is Failure){
     TestimonyError testimonyError = TestimonyError(
       code: response.code,
       message:response.errorresponse,
     );
     setTestimonyError(testimonyError);
   }
   setLoading(false);
 }

}

