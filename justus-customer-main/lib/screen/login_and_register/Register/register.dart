// import 'package:emirateslogapp/Screens/Register/Components/body.dart';
// import 'package:emirateslogapp/Screens/Register/Components/registerbody.dart';
// import 'package:emirateslogapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/style/color.dart';


import 'Components/body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // decoration: const BoxDecoration(
    //   image: DecorationImage(
    //       image: AssetImage('assets/images/register_emi.png'),
    //       fit: BoxFit.cover),
    // ),
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
      ),
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
