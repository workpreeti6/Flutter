import 'package:flutter/material.dart';
import 'package:login_app/login.dart';
import 'package:login_app/register.dart';
import 'package:login_app/dashboard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //remove banner
    initialRoute: 'login',
    routes: {
      'login':(context)=> MyLogin(),
      'register':(context) =>Registration(),
      'dashboard':(context) => Dashboard()
    },
  ));
}