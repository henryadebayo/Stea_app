
import 'package:flutter/material.dart';

Widget buildShoppingCart() {
  return Stack(
    children: <Widget>[
      Center(
        child: Container(
          height: 45.0,
          width: 45.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/stealogo.png"),
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(45.0)),
        ),
      ),
      Positioned(
        right: 0.0,
        bottom: 5.0,
        child: Container(
          height: 13.0,
          width: 13.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/stealogo.png"),
            ),
            borderRadius: BorderRadius.circular(6.5),
            color: Colors.blue[400],
          ),
        ),
      ),
    ],
  );
}