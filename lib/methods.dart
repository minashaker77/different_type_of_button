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
