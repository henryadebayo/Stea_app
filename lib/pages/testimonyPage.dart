import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/testimonyItem.dart';

class TestimonyPage extends StatefulWidget {
  const TestimonyPage({Key key}) : super(key: key);

  @override
  _TestimonyPageState createState() => _TestimonyPageState();
}

class _TestimonyPageState extends State<TestimonyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle:true,
          backgroundColor: KdarkBlueColour,
          title:Title(color: Colors.white,
            child: Text("Testimony"),
          ),
      ),
      body:
          SingleChildScrollView(
            child: Padding(
    padding: EdgeInsets.only(left: 3.0, right: 3.0),
    child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  SizedBox(height: 10.0,),
                testimonyItem(
                  testifyerName: "Henry Adebayo",
                  testifyerText: "I thankGod for the gift of life and for his protection ",
                ),
                  SizedBox(height: 20.0,),
        testimonyItem(
              testifyerName: " Adebayo",
              testifyerText: "I thankGod for the gift of life and for his protection ",
        ),
      SizedBox(height: 20.0,),
      testimonyItem(
      testifyerName: "Damilola Gideon",
      testifyerText: "I thankGod for the gift of life and for his protection ",
    ),

                Padding(padding: EdgeInsets.only(left: 50.0, right: 10.0),
                  child: FlatButton(
                    color: KdarkBlueColour,
                   child: Icon(
                     FontAwesomeIcons.plus,
                   ),
                  ),
                )
              ],
              ),
            ),
          ),
    );
  }
}
