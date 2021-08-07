import 'package:flutter/material.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/const.dart';
import 'register.dart';

final registerButtonColour =  Colors.blue[900];

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

              child: Text("Welcome !",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: KfontFamily )),
              decoration: BoxDecoration(),
            ),
            Center(
              child: Container(
                height: 250.0,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: KsteaLogo,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            welcomeButton(
              containerWidth: 100.0,
                containerHeight: 60.0,
                labelText: "Register",
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)
                  => RegisterPage()));
                }
            ),
            Center(
                child: Text(
              "Register",
              style: TextStyle(
                  fontFamily: "GoogleSans", color: Colors.white),
            ),
            ),
            SizedBox(
              height: 10.0,
            ),

            welcomeButton(
              containerHeight: 60.0,
              containerWidth: 300.0,
              labelText: "Already a member",
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}

