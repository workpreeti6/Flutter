
import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justuspickup/Dashboard/dashboard.dart';
import 'package:justuspickup/Routes/routes.dart';
import 'package:justuspickup/common/size_config.dart';


import 'package:justuspickup/style/color.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isIconVisible = false;
  int _selectedIndex = 0;

  var searchController = TextEditingController();

  List<Widget> _widgetoptions = <Widget>[
    Dashboard(),
    // Services(),
    // Profile(),
    Text("data"),
    Text("data")
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
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
    ));
    SizeConfig().init(context);
    // var size = MediaQuery.of(context).size;
    //var cardTextStyle = TextStyle(fontFamily: "Montserrat Regular")
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Image.asset('assets/images/JustUs.png', height: 50),
            ),
            Row(
              children: [
                Badge(
    child: Icon(Icons.notifications,size: 34,),
    badgeContent: Text("3"),
    badgeColor: AppColor.lightBlue,
),
    //             Badge(
    //               child:  IconButton(
    //               icon: Icon(Icons.notifications_active,
    //                   size: 34, color: AppColor.black),
    //               onPressed: () {},
                  
    //             ),
                
    //             position: BadgePosition.bottomEnd(),
    // badgeContent: Text("3"),
    //             badgeColor: AppColor.blue,
    //          ),
                // IconButton(
                //   icon: Icon(Icons.notifications_active,
                //       size: 34, color: AppColor.black),
                //   onPressed: () {},
                // ),
                SizedBox(
                  width: 15,
                ),
                // IconButton(
                //   onPressed: () {
                    
                //   },
                //   icon: ImageIcon(AssetImage("assets/images/money.png")),
                //   iconSize: 34,
                // )
              ],
            ),
          ],
        ),
        // leading: ,
        // actions: [
        //   Container(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Image.asset('assets/images/JustUs.png', height: 27),
        //   ),
        // ],
        //total pickup
        backgroundColor: AppColor.backgroundColor,
        foregroundColor: Colors.black,
      ),
      body: _widgetoptions.elementAt(_selectedIndex),
      bottomNavigationBar: bottombar(),
    );
  }

  Widget bottombar() {
    return CurvedNavigationBar(
      backgroundColor: AppColor.lightBlue,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
        ),
        Icon(
          Icons.local_laundry_service_sharp,
          size: 30,
        ),
        // Icon(
        //   Icons.notifications_none,
        //   size: 30,
        // ),
        Icon(
          Icons.account_circle,
          size: 30,
        ),
      ],
      onTap: _onItemTap,
    );
  }
}
