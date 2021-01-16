import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prefernce/model/users.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pref{
 // static storeName(String name) async{
 //    SharedPreferences prefernce = await SharedPreferences.getInstance();
 //    prefernce.setString('name', name);
 //  }
 //
 //  static Future<String > loadName()async {
 //    SharedPreferences prefernce = await SharedPreferences.getInstance();
 //    return  prefernce.getString('name');
 //  }
 // static Future<bool > removeName()async {
 //   SharedPreferences prefernce = await SharedPreferences.getInstance();
 //   return  prefernce.remove('name');
 // }
 static storeUserName(User user) async{
   SharedPreferences prefernce = await SharedPreferences.getInstance();
   String str =jsonEncode(user);
   prefernce.setString('user', str);
 }

 static Future<User> loadUserName()async {
   SharedPreferences prefernce = await SharedPreferences.getInstance();
  String str=  prefernce.getString('user');

  if(str==null||str.isEmpty){
    return null;

  }
    return User.fromJson(jsonDecode(str));

 }
 static Future<bool > removeUserName()async {
   SharedPreferences prefernce = await SharedPreferences.getInstance();
   return  prefernce.remove('user ');
 }










}