import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justusnew/routes/routes.dart';
import 'package:justusnew/style/color.dart';

import 'Components/profilepic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Profilepicture(),
        SizedBox(
          height: 20,
        ),
        profile_menu(
          icon: Icons.person,
          text: 'My Account',
          press: () {
            Navigator.pushNamed(context, Routes.myaccount);
          },
        ),
        profile_menu(
          icon: Icons.settings,
          text: 'Settings',
          press: () {
            Navigator.pushNamed(context, Routes.setting);
          },
        ),
        profile_menu(
          icon: Icons.help,
          text: 'Help Center',
          press: () {},
        ),
        profile_menu(
          icon: Icons.logout,
          text: 'Log Out',
          press: () {},
        ),
      ],
    );
  }
}

class profile_menu extends StatelessWidget {
  const profile_menu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;

  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        //padding: EdgeInsets.all(20),
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        //color: AppColor.lightBlue,
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
            ), //why only in svg picture icon available
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
