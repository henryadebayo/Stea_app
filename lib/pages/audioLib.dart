import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:stea/widgets/audioLibCard.dart';
import 'package:stea/widgets/bottomNavigation.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/testimonyItem.dart';

class AudioLib extends StatefulWidget {
  const AudioLib({Key key}) : super(key: key);

  @override
  _AudioLibState createState() => _AudioLibState();
}

class _AudioLibState extends State<AudioLib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Audio Sermons"),
       backgroundColor: KdarkBlueColour,
       centerTitle: true,
     ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: 20,
            itemBuilder: (BuildContext context, int index){
          return AudioLibCard();
        }),
      )
    );
  }
}
