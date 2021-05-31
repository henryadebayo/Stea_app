import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'appbar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}
 String title;

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xFF0E3498),
        centerTitle: true,
        backgroundColor: Color(0xFF0E3498),
        title: Title(color: Colors.blue[900], child: Text("Notification",
                style: TextStyle(fontFamily: " GoogleSans",),),
        ),
      ),

      body: Column(
        
      ),
    );
  }
}