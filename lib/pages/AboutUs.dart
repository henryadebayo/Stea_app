import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
         backgroundColor: Color(0xFF0E3498),
        title:Title(color: Colors.white,
        child: Text("About Us"),)
      ),
      
    );
  }
}