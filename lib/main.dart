import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stea/Services/send_receive_testimonies.dart';
import 'package:stea/data/uploadImage.dart';
import 'package:stea/pages/home.dart';
import 'package:stea/widgets/bottomNavigation.dart';
import 'package:stea/widgets/const.dart';

import 'pages/funanimation.dart';
// ignore: unused_import
import 'pages/welcomePage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        builder:() => MaterialApp(
          title: 'Stea app',
          theme: ThemeData(
            fontFamily: KfontFamily,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          home: FunAnimation(),
          //UploadImage(),
          //
          //FunAnimation(),
          ),
            designSize: const Size (360, 640),

    );
  }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        