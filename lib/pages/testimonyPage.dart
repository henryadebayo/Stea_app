import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stea/pages/AddTestimonyPage.dart';
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
          Column(
            children: [
               Stack(
                  children:[ SingleChildScrollView(
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
                          


                      ],
                      ),

                    ),
                  ),
                    Positioned(
                      right: 20.0,
                      bottom: 20.0,
                          child: FloatingActionButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AddTestimony()));
                            },
                            backgroundColor: KdarkBlueColour,
                            child: Icon(
                              FontAwesomeIcons.plus,
                            ),
                          ),
                        )
                ]
                ),
            ],
          ),
    );
  }
}
