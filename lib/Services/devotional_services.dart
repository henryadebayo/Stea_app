import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class SteaDevotionals {
  
  static Future<File> loadDevotional(String url)async {
    final refPDF = FirebaseStorage.instance.ref().child(url);
    final byte = await refPDF.getData();
   // return _storeFile(url, byte);
  }
  
  
}