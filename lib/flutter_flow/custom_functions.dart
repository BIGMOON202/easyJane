import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String makeDatePretty(String date) {
  try {
    final parsedDate = DateTime.parse(date);
    final formattedDate = DateFormat('M/d h:mm a').format(parsedDate);
    return formattedDate;
  } catch (e) {
    return "ooops... " + date;
  }
}

String makeStringShorter(
  String str,
  int maxlen,
) {
  if (str.length > maxlen) return str.substring(0, maxlen) + "...";
  return str;
}

String makeStringFromArray(List<dynamic> strings) {
  String res = "";

  for (int i = 0; i < strings.length; i++) {
    res += "- " + strings[i].toString();
    if (i != strings.length - 1) res += "\n";
  }

  return res;
}

bool compareDates(
  String date1,
  DateTime date2,
) {
  try {
    final p1 = DateTime.parse(date1);
    final p2 = date2;

    return p1.year == p2.year && p1.month == p2.month && p1.day == p2.day;
  } catch (e) {
    return false;
  }
}
