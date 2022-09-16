import 'package:flutter/material.dart';
import 'package:login_app/login.dart';
import 'package:login_app/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //remove banner
    initialRoute: 'login',
    routes: {
      'login':(context)=> MyLogin(),
      'register':(context) =>Registration()
    },
  ));
}