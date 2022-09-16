

import 'package:justus_admin/Routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justus_admin/Home/Views/Price_decide.dart';
import 'package:justus_admin/Home/components/options.dart';
import 'package:justus_admin/Home/Views/arriving_orders/components/tabs.dart';
import 'package:justus_admin/style/color.dart';

class Start extends StatelessWidget {
  Start({Key? key}) : super(key: key);

  List<String> optiondata = ["Washing", "Ironing", "Dry Cleaning", "Folding"];
  List<String> optionimage = ["assets/images/washing.svg", "assets/images/iron.svg", "assets/images/basket.svg", "assets/images/knitting.svg"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/JustUs.png', height: 50),
        backgroundColor: AppColor.backgroundColor,
        foregroundColor: AppColor.black,
        elevation: 1,
        // actions: [
        //    Container(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Image.asset('assets/images/JustUs.png', height: 27),
        //   ),

        // ],
      ),
      body: 
      // TabsOrders(),
      Padding(
        padding: const EdgeInsets.only(left:10.0 ,right:10,top: 40),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "let's get started!!".toUpperCase(),
                    style: GoogleFonts.varelaRound(
                        fontSize: 30, color: AppColor.blue),
                  ),
                  
                  ListView.builder(
                    padding: const EdgeInsets.only(left:10.0 ,right:10,top: 50),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, int index) => Options(
                      title: optiondata[index],
                      image: optionimage[index],
                    ),
                  ),
                
                ],
              ),
            ),
            
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.home);
                },
                label: const Text('Next'),
                icon: const Icon(Icons.arrow_circle_right),
                backgroundColor: AppColor.blue,
              ),
    );
  }
}
