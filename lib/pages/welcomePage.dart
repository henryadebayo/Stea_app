import 'package:flutter/material.dart';
import 'register.dart';

class MyWelcomePage extends StatefulWidget {
  @override
  _MyWelcomePageState createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80.0, bottom: 80.0),

              //alignment: AlignmentGeometryTween(begin),
              //height: 20.0,
              //color: Colors.red,/

              child: Text("Welcome !",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans")),
              decoration: BoxDecoration(),
            ),
            Center(
              child: Container(
                height: 250.0,
                // width: 300.0,
                //child:  Text("Foodie"),
                decoration: BoxDecoration(
                  //color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage("images/stealogo.png"),
                    // fit: BoxFit.cover,
                  ),
                  // borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            InkWell(
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => RegisterPage())); },
              borderRadius: BorderRadius.circular(40.0),
              child:  Container(
                      height: 60.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                          child: Text(
                        "Register",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.white),
                      ),
                      ),
                    ),
            ),
            //   Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => RegisterPage()));
            //Navigator.of(context).pop();
            SizedBox(
              height: 15.0,
            ),

            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                      height: 60.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Center(
                          child: Text(
                        "Already a Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.white),
                      ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
