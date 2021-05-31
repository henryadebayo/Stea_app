
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String v;
  final double width;
  final double heigth;  
  final  String styles;           
  Button({this.v, this.heigth , this.width, this.styles });
  @override
  Widget build(BuildContext context) {
    return  Container(
                decoration: BoxDecoration(color: Colors.black12,
                    borderRadius: BorderRadius.circular(100.0)
                ),
          height: heigth,
          width: width ,
          child: Center(child: Text("$v",style: TextStyle(fontFamily:"GoogleSans", color:Colors.blue),))
         
          
      
      
    );
  }
}
    
  
    