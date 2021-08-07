import 'package:flutter/material.dart';
import 'package:stea/widgets/const.dart';


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
        backgroundColor: KdarkBlueColour,
        title: Title(color: lightBlueColour, child: Text("Notification",
                style: TextStyle(fontFamily: " GoogleSans",),),
        ),
      ),

      body: Column(
        
      ),
    );
  }
}