
import 'package:flutter/material.dart';
import 'package:stea/pages/welcomePage.dart';

import 'const.dart';

class Button extends StatelessWidget {
  final String labelText;
  final double width;
  final double heigth;  
  final  String styles;           
  Button({this.labelText, this.heigth , this.width, this.styles });
  @override
  Widget build(BuildContext context) {
    return  Container(
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadius.circular(100.0)
                ),
          height: heigth,
          width: width ,
          child: Center(child: Text("$labelText",style: TextStyle(fontFamily:"GoogleSans", color:Colors.blue),))
         
          
      
      
    );
  }
}

class welcomeButton extends StatelessWidget {
  final String labelText;
  final double containerHeight;
  final double containerWidth;
  final Function onPressed;

  welcomeButton ({@required this.labelText,this.containerHeight, this.containerWidth,
    @required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(40.0),
      child: Container(
        height: containerHeight, //60.0,
        width:  containerWidth,//170.0,
        decoration: BoxDecoration(
            color: registerButtonColour,
            borderRadius: BorderRadius.circular(12.0)),
        child: Center(
          child: Text(
            labelText, // "Already a Member",
            style: TextStyle(
                fontFamily: "GoogleSans", color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class RoundWhiteButton extends StatelessWidget {
  String label;
  double height;
  double width;
  RoundWhiteButton({@required this.label, this.height, this.width});
  @override
  Widget build(BuildContext context){
return Container(
margin: EdgeInsets.only(left: 20, right: 20.0 , bottom: 40.0),
height: height,
width: width,
child: RaisedButton(
elevation: 0.0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18.0),
side: BorderSide(color:KdarkBlueColour)),
onPressed: () {},
padding: EdgeInsets.all(10.0),
color: Colors.white,
textColor: KdarkBlueColour,
child: Text(label,
style: TextStyle(fontSize: 20.0)),
),
);
}
}