import 'dart:html';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class SteaDevotionals {

FilePicker filePicker;

Future getPdfUpload()async{
  File file = (await filePicker.pickFiles(type: FileType.custom)) as File;
  //String fileName = "$"
  savePdf(file.readAsBytes());
}

  void savePdf(Future<Uint8List> asset)async {
  StorageReference reference = FirebaseStorage.instance.ref().child(path);
  StorageUploadTask uploadTask = reference.putData(asset);
  String url = await (await uploadTask.onComplete).ref.getDownloadURL();
  documentFileUpload(url);
  }

  // static Future<File> loadDevotional(String url)async {
  //   final refPDF = FirebaseStorage.instance.ref().child(url);
  //   final byte = await refPDF.getData();
  //  // return _storeFile(url, byte);
  // }
  //
  
}