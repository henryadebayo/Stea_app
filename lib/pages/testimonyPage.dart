import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stea/models/testimonyModel.dart';
import 'package:stea/pages/AddTestimonyPage.dart';
import 'package:stea/widgets/const.dart';
import 'package:stea/widgets/testimonyItem.dart';

class TestimonyPage extends StatefulWidget {
  const TestimonyPage({Key key}) : super(key: key);

  @override
  _TestimonyPageState createState() => _TestimonyPageState();
}

class _TestimonyPageState extends State<TestimonyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: KdarkBlueColour,
        title: Title(
          color: Colors.white,
          child: Text("Testimony"),
        ),
      ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0.w, right: 5.0.w, top: 10.0.h),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: tes.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(

                      child: Column(
                        children: [
                          testimonyItem(
                            testifyerName: tes[index].name,
                            testifyerText: tes[index].details,
                          ),
                          SizedBox(height: 10.0.h),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AddTestimony()));
            },
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.plus,
              color: KdarkBlueColour,
            ),
          ),
        )
      ]),
    );
  }
}
