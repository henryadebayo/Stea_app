import 'package:flutter/material.dart';
import 'package:stea/pages/devotionals.dart';
import 'package:stea/pages/testimonyPage.dart';
import 'package:stea/widgets/const.dart';

class quickAccessContent extends StatelessWidget {
 final String labelText;
 final Function onTapFunction;
 quickAccessContent({this.labelText, this.onTapFunction});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: InkWell(
        onTap:onTapFunction,
        child: Container(
          height: 100.0,
          width: 100.0,
          child: Center(
            child: Text(
              labelText, style: TextStyle(fontWeight:FontWeight.bold,color:Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/icon1.png"),
              fit: BoxFit.cover,
            ),
             // color: Color(0xFF0E3E3E3),
              borderRadius: BorderRadius.circular(10.0)
          ),
        ),
      ),
    );
  }
}

class quickAccessIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          quickAccessContent(
            onTapFunction:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Devotionals()));
            },
            labelText: "Devotionals",
          ),
          quickAccessContent(
            onTapFunction: (){
              _bottomSheet(context);
            },
            labelText: "Donations",
          ),
          quickAccessContent(
            onTapFunction: (){
              _bottomSheet(context);
            },
            labelText: "Offering",
          ),
          quickAccessContent(
            onTapFunction: (){
              _bottomSheet(context);
            },
            labelText: "Tithe",
          ),
          quickAccessContent(
            onTapFunction: (){
             // color: Colors.white,
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => TestimonyPage()));
            },
            labelText: "Testimonies",
          ),
          quickAccessContent(
            labelText: "Branches",
          ),
        ],
      ),
    );
  }
}
_bottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Colors.white,
      //shape: ShapeBorder:,
      elevation: 10.0,
      context: context,
      builder: (BuildContext context) {
        return Wrap(children: <Widget>[
          Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("Donations",
                        style: TextStyle(
                            color: KdarkBlueColour,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 5.0,),
                  Text("All Donation can be made to the "
                      "STEA bank Account Number Below.", style:TextStyle(color: KdarkBlueColour,
                    fontSize: 20.0, fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(height:40.0),
                  Text(KchurchAcc, style:TextStyle(color: KdarkBlueColour,
                    fontSize: 20.0, fontWeight: FontWeight.w900,
                  ),
                  ),
                  Text(KbankAccName, style:TextStyle(color: KdarkBlueColour,
                    fontSize: 20.0, fontWeight: FontWeight.w900,
                  ),),
                  Text(KbankName, style:TextStyle(color: KdarkBlueColour,
                    fontSize: 20.0, fontWeight: FontWeight.w900,
                  ),),
                  //Divider(height: 10.0 ,),
                  SizedBox(height: 40.0,),
                  Text("Contact Director of Finance"
                      " on.", style:TextStyle(color: Colors.black,
                    fontSize: 20.0, fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(height: 10.0,),
                  Text(KdOfF, style:TextStyle(color:Colors.black,
                    fontSize: 20.0, fontWeight: FontWeight.w900,
                  ),),
                  SizedBox(height:50),
                ]),
              )),
        ]);
      });
}

