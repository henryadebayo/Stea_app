import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stea/Services/testimony_services.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/veiw_models/testimony_view_model.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/const.dart';

class AddTestimony extends StatefulWidget {

  @override
  _AddTestimonyState createState() => _AddTestimonyState();

}

class _AddTestimonyState extends State<AddTestimony> {

  String name;
  String details;
  TestimonyModel testimony;
  TestimonyService testimonyService;
  TestimonyVeiwModel testimonyVeiwModel;


  final formkey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
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
                    // TextFormField(
                    //     decoration: InputDecoration(
                    //         labelText: "Name",
                    //         focusColor: Colors.red,
                    //         border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(20.0),
                    //         )
                    //     ),
                    //     maxLength: 25,
                    //     onSaved: (String value) {
                    //       print(value);
                    //       testimony.name = value;
                    //     },
                    //     validator: (String value) {
                    //       if (value.isEmpty) {
                    //         return "please input your name";
                    //       }
                    //       return null;
                    //     }
                    // ),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: "name",
                            // hintStyle: TextStyle(),
                            focusColor: Colors.red,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),

                            )
                        ),
                        maxLength: 25,
                        onSaved: (String value) {
                          print(value);
                          testimony.name = value;
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "please input your Testimony text";
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
                          print(value);
                          testimony.details = value;
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

              RoundWhiteButton(
                onTap: () {
                 if (formkey.currentState.validate()){
                   formkey.currentState.save();
                   testimonyService.sendTes(testimony);
                 }
                },
                label: "Save",
                width: 500.0,
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() async {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      testimonyService.sendTes(testimony);
      testimonyService.loading ?
      showLoadingIndicator(context) :  SnackBar(
        backgroundColor: KdarkBlueColour,
        content: Text("Testimony uploaded successfully"),
        duration: Duration(
            seconds: 2
        ),
      );
      // bool value = await testimonyScopedModel.sendTes(testimonys);
      // if (testimonyVeiwModel.loading) {
      //   showLoadingIndicator();
      //   Navigator.of(context).pop();
      //   testimonyVeiwModel.testimonyPostedResponse;
        // SnackBar snackBar = SnackBar(
        //    backgroundColor: KdarkBlueColour,
        //    content: Text("Testimony uploaded successfully"),
        //    duration: Duration(
        //      seconds: 2
        //    ),
        //  );
        //    mainKey.currentState.showSnackBar(snackBar);
        //   }else if(value!= true){
        //     Navigator.of(context).pop();
        //     SnackBar snackBar = SnackBar(
        //       backgroundColor: KdarkBlueColour,
        //       content: Text("Failed to upload Testimony", style:TextStyle(color: Colors.redAccent),),
        //       duration: Duration(
        //           seconds: 2
        //       ),
        //     );
        //     mainKey.currentState.showSnackBar(snackBar);
        //   }
      // } else {
      //
      // }
    }
  }
}

//     Future showLoadingIndicator(BuildContext context) {
//       return showDialog(context: context,
//           barrierDismissible: false,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               content: Row(
//                 children: [
//                   SpinKitCubeGrid(
//                     color: Colors.blueAccent,
//                     size: 25.0,
//                   ),
//                   SizedBox(width: 16,),
//                   Text("Uploading Testimony..."),
//                 ],
//               ),
//             );
//           });
//     }
//   }
// }

void showLoadingIndicator(BuildContext context) {
  showDialog(context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: [
              SpinKitCubeGrid(
                color: Colors.blueAccent,
                size: 25.0,
              ),
              SizedBox(width: 16,),
              Text("Uploading Testimony..."),
            ],
          ),
        );
      });
}