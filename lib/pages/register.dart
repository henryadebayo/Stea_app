import 'package:flutter/material.dart';
import 'package:stea/models/registerModel.dart';
import 'alreadyMember.dart';
import 'homePage.dart';


class RegisterPage extends StatefulWidget {
 

  @override
  _RegisterPageState createState() => _RegisterPageState(model: RegisterModel);
}

class _RegisterPageState extends State<RegisterPage> {
  String _firstname;
  String _lastName;
  String _emailAddress;
  String _phoneNumber;
  String _address;
    var model = RegisterModel;
  _RegisterPageState({@required this.model});
final formKey = GlobalKey<FormState>();
final mainKey = GlobalKey<ScaffoldState>();

  // ignore: non_constant_identifier_names
  Widget _buidFIrstNameFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0),
      child: TextFormField(
        expands: false,

        decoration: InputDecoration(
          border: InputBorder.none,
          //TextInoutBorder.none,
          contentPadding:
           EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          labelText: "First name",
          hintStyle: TextStyle(
              color: Colors.black12, fontSize: 14.0, fontFamily: "GoogleSans"),
        ),
        
        onSaved: (firstName) {
          _firstname = firstName;
        },
        validator: (String firstName) {
          String errorMessage;
          if (firstName.isEmpty) {
            return errorMessage = "please fill in your first name";
          }
        },
      ),
    );
  }

  Widget _buidLastNameFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0),
      child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            //TextInoutBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            labelText: "Last name",
            hintStyle: TextStyle(
                color: Colors.black12,
                fontSize: 14.0,
                fontFamily: "GoogleSans"),
          ),
          onSaved: (String lastName) {
            lastName = _lastName;
          },
          // ignore: missing_return
          validator: (String lastName) {
            if (lastName.isEmpty) {
              String errorMessage;
              errorMessage = "please fill in your last name";
              return errorMessage;
            }
          }),
    );
  }
  

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
          email = _emailAddress;
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

  Widget _buidPhoneNumberFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0),
      child: TextFormField(

          /// maxLength: 11,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            //TextInoutBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            labelText: "Phone Number",
            hintStyle: TextStyle(
                color: Colors.black12,
                fontSize: 14.0,
                fontFamily: "GoogleSans"),
          ),
          onSaved: (String phoneNumber) {
            phoneNumber = _phoneNumber;
          },
          validator: (String phoneNumber) {
            if (phoneNumber.isEmpty) {
              String errorMessage;
              errorMessage = "please fill in your last name";
              return errorMessage;
            }
          }),
    );
  }

  Widget _buidAddressFormFeild() {
    return Material(
      color:  Color(0xFF0E3E3E3),
      borderRadius: BorderRadius.circular(04.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          //TextInoutBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          labelText: "Address",
          hintStyle: TextStyle(
              color:Color(0xFF0E3E3E3), fontSize: 14.0, fontFamily: "GoogleSans"),
        ),
        onSaved: (String address) {
          address = _address;
        },
        validator: (String address) {
          //String errorMessage;
          if (address.isEmpty) {
            return " Address is required";
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white70,
        // resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            //height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Fill In Your Details ",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSans",
                      color: Colors.blue[900]),
                ),
               
                SizedBox(height: 50.0),
                 Form(
                   key: formKey, 
                   child: Column(
                     children:<Widget>[
                _buidFIrstNameFormFeild(),
                SizedBox(
                  height: 30,
                ),
                _buidLastNameFormFeild(),
                SizedBox(
                  height: 30,
                ),
                _buidEmailAddressFormFeild(),
                SizedBox(
                  height: 30,
                ),
                _buidPhoneNumberFormFeild(),
                SizedBox(
                  height: 30,
                ),
                _buidAddressFormFeild(),
                ]),
                ),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                    onTap: onPressed,
                    onDoubleTap: ()
                    {  Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MyHomePage()));},
                    child: Container(
                      height: 60.0,
                      // width: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(04.0)),
                      child: Center(
                          child: Text(
                        "Become a Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.white),
                      )),
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: <Widget>[
                    //SizedBox(width: 10.0,),
                    Center(
                      child: Text(
                        "Already a",
                        style: TextStyle(
                            fontFamily: "GoogleSans", color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>AlreadyMember()));
                      },
                      child: Text(
                        "Member",
                        style: TextStyle(
                            fontFamily: "GoogleSans",
                            color: Colors.indigo[800]),
                      ),
                    ),
                     SizedBox(
                      height: 20.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

        /*    */
      ),
    );
  }
  void onPressed(){
      var form = formKey.currentState;
      if(form.validate()){
        form.save();
     Navigator.of(context).push(MaterialPageRoute(
builder: (BuildContext context) => MyHomePage(name:_firstname)));
      }
    }
}
