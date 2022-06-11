import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

saveData(String label, var value) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  var item;
  switch (value.runtimeType) {
    case int:
      {
        item = pref.setInt(label, value);
      }
      break;
    case bool:
      {
        item = pref.setBool(label, value);
      }
      break;
    case String:
      {
        item = pref.setString(label, value);
      }
      break;
  }
  await item;
}

Future<dynamic> getData(String label) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.get(label);
}

notess() async {
  List<String> intProductListOriginal = [
    "11, 22, 33, 44, 55",
  ];
  SharedPreferences pref = await SharedPreferences.getInstance();
  List<String> textNoteList =
      intProductListOriginal.map((i) => i.toString()).toList();

  pref.setStringList("textNote", textNoteList);
  print("${textNoteList.toString()}");
}

Future<dynamic> getNotes(List<String> textNote) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String>? textNote = prefs.getStringList("textNote");
  return textNote;
}
