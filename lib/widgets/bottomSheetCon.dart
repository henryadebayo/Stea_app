import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bottomSheetCon extends StatelessWidget {
  final  IconData;
  final String Name;
  bottomSheetCon({ this.Name, this.IconData});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15.0),
          color: Colors.blueAccent
      ),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Icon(IconData,color: Colors.white,size:70.0,),
          SizedBox(height: 15.0,),
          Text(Name, style: TextStyle(color: Colors.white, fontSize: 20.0),)
        ],
      ),
    );
  }
}

