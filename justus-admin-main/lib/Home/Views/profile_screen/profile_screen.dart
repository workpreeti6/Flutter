import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:justus_admin/Home/Views/profile_screen/Body.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
     
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: Text(
            'Profile',
            style: TextStyle(color: Colors.grey,fontSize: 25),
            
        ),
          ),
          Profile_Body(),
        ],
      ),
    );
  }
}
