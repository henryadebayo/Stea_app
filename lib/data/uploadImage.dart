
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stea/widgets/buton.dart';
import 'package:stea/widgets/const.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key key}) : super(key: key);

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {

  final picker = ImagePicker();

  Future pickImage() async {
  //  final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      //_imageFile = File(pickedFile.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:,
      appBar:
      AppBar(
        title: Text("Upload Slider Image", style: TextStyle(fontWeight: FontWeight.bold, color: KdarkBlueColour),),
        elevation: 5.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:SafeArea(
        child: Column(
          children:
          [

            RoundWhiteButton(
              label: "Select Image",
              height: 50.0,
              width:200.0,
            ),
          ]
        ),
      ),
    );
  }
}

