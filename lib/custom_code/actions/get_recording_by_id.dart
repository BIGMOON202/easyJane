// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> getRecordingById(
  String recordingId,
) async {
  // Add your function code here!
  try {
    final response = await http
        .get(Uri.parse('https://fomo.andreascarpetta.com/display?format=json'));

    final List<dynamic> recordings =
        json.decode(utf8.decode(response.bodyBytes));

    return recordings
        .firstWhere((user) => user['id'].toString() == recordingId.toString());
  } catch (e) {
    return null;
  }
}
