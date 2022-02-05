import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/Services/testimony_services.dart';
import 'package:stea/models/testimonyModel.dart';

class TestimonyVeiwModel extends ChangeNotifier{

  bool _loading = false;
 List<TestimonyModel> _testimonyModel = [];
 TestimonyError _testimonyError;
 Widget _testimonyPosted;

TestimonyVeiwModel(){
  getTestimony();
  postTestimoy(TestimonyModel());
}

 bool get loading => _loading;
 List<TestimonyModel> get testimonyModel => _testimonyModel;
 TestimonyError get testimonyError => _testimonyError;
 Widget get testimonyPostedResponse => _testimonyPosted;

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

  setTestimonyPosted(Widget testimonyPostedResponse){
   _testimonyPosted = testimonyPostedResponse;
  }


Future getTestimony()async{
   setLoading(true);
   var response = await TestimonyService
   .getTestimonies();
   if(response is Success){
     setTestimonyModel(response.response);
   }
   if(response is Failure){
     TestimonyError testimonyError = TestimonyError(
       code: response.code,
       message:response.errorResponse,
     );
     setTestimonyError(testimonyError);
   }
   setLoading(false);
 }

 Future postTestimoy(TestimonyModel testimonyModel)async{
   TestimonyModel testimony;
   setLoading(true);
   var response = await TestimonyService.postTestimony(testimony);
   if(response is Success){
     setTestimonyPosted(response.response);
   }
   if(response is Failure){
     TestimonyError testimonyError = TestimonyError(
       code: response.code,
       message:response.errorResponse,
     );
     setTestimonyError(testimonyError);
   }
   setLoading(false);
 }

}