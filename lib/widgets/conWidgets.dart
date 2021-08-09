import 'package:flutter/material.dart';
import 'const.dart';


class aboutUsImageContainer extends StatelessWidget {

  String imageName;
   aboutUsImageContainer({@required this.imageName,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width:double.infinity,
      decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage(imageName),
            fit:BoxFit.cover,
          ),
          borderRadius:BorderRadius.circular(10.0)
      ),
    );
  }
}

class aboutUsNameH extends StatelessWidget {
  String labelName;
  aboutUsNameH({@required this.labelName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.0, right: 7.0),
      child: Container(
          height: 40.0,
          width:double.infinity,
          decoration: BoxDecoration(
          color: KdarkBlueColour,
      ),
      child:
        Center(child:
      Text(labelName,
        style: TextStyle(color:Colors.white,fontSize:18.0,
          fontWeight: FontWeight.bold,
          wordSpacing:2.0,
        ),
      ),
        ),
      ),
    );
  }
}
class aboutUsInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elitDonec arcu mi, feugiat accumsan urna a, vulputate rutrum est Nullam ultricies ullamcorper laoreet Etiam faucibu vehicula nulla non tempus Pellentesque quis facilisis velit",
style: TextStyle(color:KdarkBlueColour,),textAlign: TextAlign.center,
),
);
  }
}
class carouselItems extends StatelessWidget {
  final image;

  carouselItems({@required this.image});

  @override
  Widget build (BuildContext context) {
    return Container(
        decoration:
        BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0)
        )
    );
  }
}
class exitWidget extends StatelessWidget {
  const exitWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text("Do you want to Exit App ?"),
        actions:<Widget>[FlatButton(
          onPressed: ()=>Navigator.pop(context,false),
          child: Text("No"),),
          FlatButton(
            onPressed: ()=>Navigator.pop(context,true),
            child: Text("Yes"),),
        ]
    );
  }
}

