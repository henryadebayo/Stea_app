import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stea/data/uploadImage.dart';
import 'package:stea/widgets/const.dart';

import 'pages/funanimation.dart';
// ignore: unused_import
import 'pages/welcomePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Stea app',
      theme: ThemeData(
        fontFamily:KfontFamily,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: UploadImage(),
      //FunAnimation(),
    );
  }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        