import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stea/Services/send_receive_testimonies.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/pages/testimonyPage.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/customtextform.dart';

class AddTestimony extends StatefulWidget {
// final TestimonyModel testimonys;
// AddTestimony({this.testimonys});
  @override
  _AddTestimonyState createState() => _AddTestimonyState();

}

class _AddTestimonyState extends State<AddTestimony> {

  String name;
  String details;
  TestimonyModel testimonys = TestimonyModel();


  final formkey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  final TestimonyScopedModel testimonyScopedModel = TestimonyScopedModel();


  @override
  Widget build(BuildContext context) {
    return ScopedModel<TestimonyScopedModel>(
      model: testimonyScopedModel,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: KdarkBlueColour,
          title: Text(
            "Testimonies",
            style: TextStyle(fontFamily: KfontFamily,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Column(
              children: [
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 12),

                Form(
                    key: formkey,
                    child:
                    Column(children: [
                      TextFormField(
                        //expands: true,

                          decoration: InputDecoration(
                              labelText: "Name",
                              // hintStyle: TextStyle(),
                              focusColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),

                              )
                          ),
                          maxLength: 25,
                          onSaved: (value) {
                            testimonys.name = value;
                          },
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "please input your name";
                            }
                            return null;
                          }
                      ),

                      SizedBox(height: MediaQuery
                          .of(context)
                          .size
                          .height / 30),

                      TextFormField(
                        //expands: true,

                          decoration: InputDecoration(
                              labelText: "Testimony",
                              // hintStyle: TextStyle(),
                              focusColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),

                              )
                          ),
                          maxLines: 10,
                          maxLength: 2000,
                          onSaved: (String value) {
                            testimonys.details = value;
                          },
                          validator: (String value) {
                            if (value.isEmpty) {
                              return "please input your Testimony text";
                            }
                            return null;
                          }
                      ),
                    ],)

                ),

                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 50),

                ScopedModelDescendant(
                    builder: (BuildContext context, Widget child,
                        TestimonyScopedModel model) {
                      return GestureDetector(
                        onTap:(){
                          if(model.isLoading){
                            showLoadingIndicator(context);
                            onPressed(testimonys);
                          }
                        },
                        child: RoundWhiteButton(

                          onTap:(){
                            if(testimonyScopedModel.isLoading){
                             showLoadingIndicator(context);
                            }else{
                              //showLoadingIndicator(context);
                            }
                          }, //onPressed(testimonys),
                          label: "Save",
                          width: 500.0,
                          height: 60.0,
                        ),
                      );
                    }
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }

 void onPressed(TestimonyModel testimonyModel) async {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      await testimonyScopedModel.sendTes(testimonys);
      Navigator.of(context).pop();
    }
  }

  // SnackBar(
  //   backgroundColor: KdarkBlueColour,
  //   content: Text("Testimony upload successful"),
  //   duration: Duration(
  //     seconds: 2
  //   ),
  // );

  Future<void> showLoadingIndicator(BuildContext context) {
    return showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 16,),
                Text("Uploading Testimony..."),
              ],
            ),
          );
        });
  }
}