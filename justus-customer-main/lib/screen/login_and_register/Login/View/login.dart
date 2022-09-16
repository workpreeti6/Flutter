// import 'package:emirateslogapp/discarded/home.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/screen/login_and_register/Login/Components/body.dart';
import 'package:justusnew/style/color.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:emirateslogapp/Screens/Home/homenew.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      ),
      body:  SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
