import 'dart:io';
//import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:stea/models/devotionalModel.dart';

class SteaDevotionals extends ChangeNotifier{

FilePicker filePicker;
DevotionalModel devotional = DevotionalModel();

Future getPdfUpload()async{
  File file = (await filePicker.pickFiles(type: FileType.custom)) as File;
  //String fileName = "$"
  savePdf(file.readAsBytes());
}

  void savePdf(Future<Uint8List> asset)async {
  Reference ref = FirebaseStorage.instance.ref().child(path);
 UploadTask upload = ref.putData(asset);
 String url;
  upload.whenComplete(() {
    url = ref.getDownloadURL() as String;
  }).catchError((onError) {
    print(onError);
  });
  //return url;
  // String url = await (await upload.whenComplete(() => null)).ref.getDownloadURL();
  documentFileUpload(url);
  }
void documentFileUpload(String url) {
var devotionalModel = {
  "devtionalName": devotional.devotionalName,
  "devotionalPath": devotional.devotionalPath,
  "devotionalDescription": devotional.devotionalDescription,
  "devotionalId": devotional.id,
};

}
  // static Future<File> loadDevotional(String url)async {
  //   final refPDF = FirebaseStorage.instance.ref().child(url);
  //   final byte = await refPDF.getData();
  //  // return _storeFile(url, byte);
  // }
  //
  
}