import 'package:flutter/material.dart';
import 'package:justus_admin/Home/Views/Delivery_Due/delivery_due.dart';
import 'package:justus_admin/Home/Views/Delivery_overdue/delivery_overdue.dart';
import 'package:justus_admin/Home/Views/Neworders/requests.dart';

import 'package:justus_admin/Home/Views/Price_decide.dart';
import 'package:justus_admin/Home/Views/dashboard/homescreen.dart';
import 'package:justus_admin/Home/Views/arriving_orders/recentrequests.dart';
import 'package:justus_admin/Home/Views/profile_screen/myaccount.dart';
import 'package:justus_admin/Home/Views/profile_screen/setting.dart';
import 'package:justus_admin/Home/Views/settlement/ordersummary.dart';
import 'package:justus_admin/Home/Views/settlement/settlement.dart';
import 'package:justus_admin/Login/View/login.dart';
import 'package:justus_admin/Register/register.dart';
import 'package:justus_admin/complete_profile/complete_profile_screen.dart';

import '../Home/Views/start.dart';

class Routes {
  static const String initialRoute = login;
  static const String start = "start";
  static const String orders = "orders";
  static const String price = "price";
  static const String home = "home";
  static const String login = "login";
  static const String register = "register";
  static const String completeProfile = "completeProfile";
  static const String settlement = "settlement";
  static const String settlementsummary = "settlementsummary";
  static const String recentrequests = "recentrequests";
  static const String  delivery_due = "delivery_due";
  static const String  delivery_over_due = "delivery_over_due";
  static const String  myaccount = "myaccount";
  static const String  setting = "setting";



  static Map<String, Widget Function(BuildContext)> route(context) => {
        start: (context) => Start(),
        orders: (context) => Orders(),
        price: (context) => Price(),
        home: (context) => HomeScreen(),
        login: (context) => LoginPage(),
        register: (context) => RegisterPage(),
        completeProfile: (context) => CompleteProfileScreen(),
        settlement: (context) => Settlements(),
        settlementsummary: (context) => SettlementSummary(),
        recentrequests: (context) => RecentRequests(),
        myaccount: (context) => EditProfilePage(),        
        delivery_over_due: (context) => DeliveryOverDueOrders(),
        delivery_due: (context) => DeliveryDueOrders(),
        setting: (context) => SettingsPage(),

       
      };
}
