import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justusnew/common/search-bar.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/screen/dashboard/view/dashboard.dart';
import 'package:justusnew/screen/dashboard/view/sort.dart';
import 'package:justusnew/screen/orders/components/tabs.dart';
import 'package:justusnew/screen/profile_screen/profile_screen.dart';
import 'package:justusnew/style/color.dart';

import '../../notifications/notifications.dart';
import 'filter.dart';
import 'item_card.dart';
import 'product.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetoptions = <Widget>[
    dashboard(),
    Tabs1(),
    NotificationScreen(),
    Profile(),
  ];
  void _onItemTap(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2.0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.location_pin),
              onPressed: () {},
            ),
            Container(
              decoration: BoxDecoration(),
              child: Text(
                "ABC, XYZ",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            ),
          ],
        ),
        // leading: ,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Image.asset('assets/images/JustUs.png', height: 27),
          ),
        ],
        //
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: _widgetoptions.elementAt(_selectedIndex),
      bottomNavigationBar: bottombar(),
    );
  }

  Widget bottombar() {
    SizeConfig().init(context);
    return CurvedNavigationBar(
      backgroundColor: AppColor.backgroundColor,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
        ),
        Icon(
          Icons.list,
          size: 30,
        ),
        Icon(
          Icons.notifications_none,
          size: 30,
        ),
        Icon(
          Icons.account_circle,
          size: 30,
        ),
      ],
      onTap: _onItemTap,
    );
  }
}
