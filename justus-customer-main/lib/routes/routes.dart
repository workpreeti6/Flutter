import 'package:flutter/cupertino.dart';
import 'package:justusnew/screen/dashboard/category/washing.dart';
// import 'package:justusnew/screen/dashboard/view/category/washing.dart';
import 'package:justusnew/screen/dashboard/view/dashboard.dart';
import 'package:justusnew/screen/dashboard/view/home.dart';
import 'package:justusnew/screen/detailsScreen1/view/DescPage.dart';
import 'package:justusnew/screen/login_and_register/Login/View/login.dart';
import 'package:justusnew/screen/login_and_register/Register/register.dart';
import 'package:justusnew/screen/login_and_register/complete_profile/complete_profile_screen.dart';
import 'package:justusnew/screen/profile_screen/myaccount.dart';
import 'package:justusnew/screen/profile_screen/profile_screen.dart';
import 'package:justusnew/screen/profile_screen/setting.dart';

import '../screen/orders/View/ordersummary.dart';

class Routes {
  static const String initialRoute = login;
  static const String dashboard = "dashboard";
  static const String ordersummary = "ordersummary";
  static const String details = "details";
  static const String myaccount = "myaccount";
  static const String setting = "setting";
  static const String washing = "washing";
  static const String login = "login";
  static const String register = "register";
  static const String completeProfile = "completeProfile";

  static Map<String, Widget Function(BuildContext)> route(context) => {
        dashboard: (context) => const DashboardScreen(),
        ordersummary: (context) => OrderSummary(),
        myaccount: (context) => SettingsUI(),
        setting: (context) => SettingsPage(),
        washing: (context) => Washing(),
        login: (context) => MyLogin(),
        register: (context) => RegisterPage(),
        completeProfile: (context) => CompleteProfileScreen(),

        // details: (context) => const DescPage(),
      };
}
