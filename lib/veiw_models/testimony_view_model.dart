import 'package:flutter/material.dart';
import 'package:stea/Services/api_status.dart';
import 'package:stea/Services/testimony_services.dart';
import 'package:stea/models/testimonyModel.dart';

class TestimonyVeiwModel extends ChangeNotifier{
  TestimonyService testimonyService;

  bool _loading = false;
 List<TestimonyModel> _testimonyModel = [];
 TestimonyError _testimonyError;
 Widget _testimonyPosted;
 String _details;
 String _name;

TestimonyVeiwModel(){
  getTestimony();
  //postTestimony(name, details);
}

 bool get loading => _loading;
  bool get loadingg => _loading;
 List<TestimonyModel> get testimonyModel => _testimonyModel;
 TestimonyError get testimonyError => _testimonyError;
 Widget get testimonyPostedResponse => _testimonyPosted;

  // get details => _details;
  // get name => _name;

 setLoading(bool loading)async{
   _loading = loading;
   notifyListeners();
 }
  setLoadingg(bool loadingg)async{
    _loading = loadingg;
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

 // Future postTestimony(String name, details)async{
 //   setLoadingg(true);
 //   var response = await testimonyService.sendTes(name, details);
 //   if(response is Success){
 //     setTestimonyPosted(response.response as Widget);
 //   }
 //   if(response is Failure){
 //     TestimonyError testimonyError = TestimonyError(
 //       code: response.code,
 //       message:response.errorResponse,
 //     );
 //     setTestimonyError(testimonyError);
 //   }
 //   setLoadingg(false);
 // }

}