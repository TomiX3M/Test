import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Username {
  static SharedPreferences? _prefs;
  String firstnameKey = 'firstname';
  String lastnameKey = 'lastname';

  Future init() async => _prefs = await SharedPreferences.getInstance();

  Future setName(String firstname, String lastname) async {
    await _prefs!.setString(firstnameKey, firstname);
    await _prefs!.setString(lastnameKey, lastname);
    debugPrint(firstname);
  }

  String getfirstName() => _prefs!.getString(firstnameKey) ?? 'Sdg';
  String getlastName() => _prefs!.getString(lastnameKey) ?? 'Ajah';
}