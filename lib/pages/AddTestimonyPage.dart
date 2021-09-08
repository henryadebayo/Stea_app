import 'package:flutter/material.dart';
import 'package:stea/pages/testimonyPage.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/customtextform.dart';

class AddTestimony extends StatefulWidget {
  const AddTestimony({Key key}) : super(key: key);

  @override
  _AddTestimonyState createState() => _AddTestimonyState();
}

class _AddTestimonyState extends State<AddTestimony> {

 String _name;
 String _Testimony;
  final formkey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: KdarkBlueColour,
        title: Text(
          "Testimonies",
          style: TextStyle(fontFamily: KfontFamily, letterSpacing: 1.0, fontWeight: FontWeight.bold
         ),
        ),
      ),
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.only(left:10.0, right: 10.0, top: 10.0),
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height/12),

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
                          onSaved: (String value){
                            value = _name;
                          },
                          validator: (String value){
                            if(value.isEmpty){
                              return "please input your name";
                            }
                          }
                      ),

                      SizedBox(height:MediaQuery.of(context).size.height/30),

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
                          onSaved: (String value){
                            value = _Testimony;
                          },
                          validator: (String value){
                            if(value.isEmpty){
                              return "please input your Testimony text";
                            }
                          }
                      ),
                    ],)

              ),

              SizedBox(height:MediaQuery.of(context).size.height/50),

              RoundWhiteButton(
                onTap: onPressed,
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
void onPressed(){
    var form = formkey.currentState;
    if(form.validate()){
      form.save();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                TestimonyPage(

                )));
    }
  }
}
