import 'package:flutter/material.dart';
import 'package:stea/widgets/buildAppbarLogo.dart';


String title;

class MyAppBar extends AppBar{

MyAppBar(
  {Key key , Widget title, bool centerTitle,}) : super(key: key, title: title, actions:<Widget>[
    buildShoppingCart(),
                SizedBox(width: 20.0),
]);
}