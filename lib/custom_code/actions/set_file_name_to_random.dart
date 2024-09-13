// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:uuid/uuid.dart';

Future<FFUploadedFile> setFileNameToRandom(FFUploadedFile file) async {
  // Add your function code here!
  print(file.name);

  final String newName = Uuid().v4().substring(0, 8) + ".mp3";

  final newfile = FFUploadedFile(
      width: file.width,
      height: file.height,
      bytes: file.bytes,
      name: newName,
      blurHash: file.blurHash);

  return newfile;
}
