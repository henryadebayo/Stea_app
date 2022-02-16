import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
//import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:stea/models/devotionalModel.dart';
import 'package:stea/widgets/conWidgets.dart';
class SteaDevotionals extends ChangeNotifier {

  final DatabaseReference databaseReference =
  FirebaseDatabase.instance.reference().child("devotionals");
  File _file;
  bool _loading;

   get file => _file;
   get loading => _loading;

   setFile(File file){
     _file = file;
     notifyListeners();
   }

   setLoading(bool loading){
     _loading = loading;
   }


  FilePicker filePicker;
  DevotionalModel devotional = DevotionalModel();


  Future getPdfFromDevice()async{
    setFile(await filePicker.pickFiles(type: FileType.custom) as File);
  }

  // Future uploadPdf(DevotionalModel devotional) async {
  //
  //   Reference ref = FirebaseStorage.instance.ref().child("devotional").child(
  //       "/${devotional.devotionalName}.pdf");
  //   UploadTask uploadTask = ref.putData(
  //       _file.readAsBytesSync(), SettableMetadata(
  //       contentType: "pdf",
  //       customMetadata: {
  //         "devotionalName": devotional.devotionalName,
  //         "devotionalPath": devotional.devotionalPath,
  //         "devotionalDescription": devotional.devotionalDescription,
  //         "devotionalId": devotional.id,
  //       }
  //   ));
  // }
  //
  // Future<List<Map<String, dynamic>>> loadDevotional()async{
  //   FirebaseStorage.instance;
  //   List<Map<String, dynamic>> devos = [];
  //   final ListResult result = await storage.ref().list();
  // }




Future getPdfUpload()async{
   setFile((await filePicker.pickFiles(type: FileType.custom)) as File);
 String fileName = _file.path;
  savePdf(_file.readAsBytesSync(), fileName);
}

  void savePdf(List<int> asset, name)async {
    setLoading(true);
  Reference ref = FirebaseStorage.instance.ref().child("devotional").child("/$name.pdf");
 UploadTask upload = ref.putData(asset);
 String url;
  upload.whenComplete(() {
    url = ref.getDownloadURL() as String;
  }).catchError((onError) {
    print(onError);
  });
  //return url;
  // String url = await (await upload.whenComplete(() => null)).ref.getDownloadURL();
  documentFileUpload(url,devotional);
  setLoading(false);
  }

  CreateCryptoRandomString([int length = 32]){
    final Random _random = Random.secure();
    var values = List<int>.generate(length, (index) => _random.nextInt(256));
    return base64UrlEncode(values);
  }

void documentFileUpload(String url,DevotionalModel devotional) {
var devotionalModel = {
  "devotionalName": devotional.devotionalName,
  "devotionalPath": devotional.devotionalPath,
  "devotionalDescription": devotional.devotionalDescription,

};
databaseReference.child(CreateCryptoRandomString()).set(devotional).then((value) => print("success"));
}
//   // static Future<File> loadDevotional(String url)async {
//   //   final refPDF = FirebaseStorage.instance.ref().child(url);
//   //   final byte = await refPDF.getData();
//   //  // return _storeFile(url, byte);
//   // }
//   //
//
// }
}