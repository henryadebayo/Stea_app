import 'package:flutter/material.dart';
class AlreadyMember extends StatefulWidget {
  @override
  _AlreadyMemberState createState() => _AlreadyMemberState();
}

class _AlreadyMemberState extends State<AlreadyMember> {

String emailAddress;



  Widget _buidEmailAddressFormFeild() {
    return Material(
      color: Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0),
      child: TextFormField(
        autocorrect: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          //TextInoutBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          labelText: "Email address ",
          hintStyle: TextStyle(
              color: Colors.black12, fontSize: 14.0, fontFamily: "GoogleSans"),
        ),
        onSaved: (String email) {
          email = emailAddress;
        },
        validator: (String email) {
          String errorMessage;
          if (!email.contains("@")) {
            errorMessage = "email address is incorrect";
          }
          if (email.isEmpty) {}
          return errorMessage;
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: Column(
                      //mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hello",
                      style: TextStyle(fontFamily: "GoogleSans", fontSize: 30.0,color:Colors.blue[900]),
                    ),
                    Text(
                      "Welcome Back.",
                      style: TextStyle(fontSize: 30.0,color:Colors.blue[900]),
                    ),
                    SizedBox(height: 20.0),
             Container(
               child:
               _buidEmailAddressFormFeild()
             ),
                  ],
                ),
      ),
    );
  }
}