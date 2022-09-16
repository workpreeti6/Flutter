// import 'package:emirateslogapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/style/color.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/JustUs.png', height: 50),
        backgroundColor: AppColor.backgroundColor,
        elevation: 1,
        // actions: [
        //    Container(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Image.asset('assets/images/JustUs.png', height: 27),
        //   ),

        // ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
