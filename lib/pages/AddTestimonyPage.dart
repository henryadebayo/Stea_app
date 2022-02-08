import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/src/provider.dart';
import 'package:stea/Services/send_testimony_service.dart';
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
  final testimony = TestimonyModel();
  final formkey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();
  TestimonyService testimonyService = TestimonyService();


  @override
 // TestimonyService testimonyService = context.watch<TestimonyService>();
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: KdarkBlueColour,
        title: Text(
          "Upload Testimony",
          style: TextStyle(fontFamily: KfontFamily,
              letterSpacing: 1.0,
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
                        decoration: InputDecoration(
                            labelText: "name",
                            focusColor: Colors.red,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )
                        ),
                        maxLength: 25,
                        onSaved: (String value) {
                          name = value;
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
                         details = value;
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
                  //testimonyVeiwModel.postTestimony(name,details);
                  testimonyService.sendTes(name, details);
                 }
                 if(testimonyService.loading == false){
                   Navigator.of(context).pop();
                   SnackBar(
                     backgroundColor: KdarkBlueColour,
                     content: Text("Testimony uploaded successfully"),
                     duration: Duration(
                         seconds: 2
                     ),
                   );
                 }else{
                   showLoadingIndicator(context);
                 }
                },
                label: "Upload",
                width: 500.0,
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void onPressed() async {
  //   if (formkey.currentState.validate()) {
  //     formkey.currentState.save();
  //     testimonyService.sendTes(testimony);
  //     testimonyService.loading ?
  //     showLoadingIndicator(context) :  SnackBar(
  //       backgroundColor: KdarkBlueColour,
  //       content: Text("Testimony uploaded successfully"),
  //       duration: Duration(
  //           seconds: 2
  //       ),
  //     );
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
  //  }
 // }
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