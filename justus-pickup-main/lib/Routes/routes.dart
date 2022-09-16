
import 'package:flutter/material.dart';
import 'package:justuspickup/Start/homescreen.dart';

class Routes {
    static const String initialRoute = homescreen;
  
  static const String  homescreen = "homescreen";



  static Map<String, Widget Function(BuildContext)> route(context) => {
       
        homescreen: (context) => HomeScreen(),

       
      };
}
