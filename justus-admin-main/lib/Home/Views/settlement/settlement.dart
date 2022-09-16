import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justus_admin/Common/size_config.dart';
import 'package:justus_admin/Routes/routes.dart';
import 'package:justus_admin/style/color.dart';

class Settlements extends StatelessWidget {
  Settlements({Key? key, this.ind}) : super(key: key);
  int? ind;
  List<SettlementsList> settlementlist = [
    SettlementsList(
      clothName: 'Id: #1245',
      clothPrice: 412,
      // clothQuantity: 2,
      clothService: 'Wash & Iron',
    ),
    SettlementsList(
      clothName: 'Id: #2341',
      clothPrice: 431,
      // clothQuantity: 3,
      clothService: "Dry Cleaning",
    ),
    SettlementsList(
      clothName: 'Id: #9865',
      clothPrice: 690,
      // clothQuantity: 3,
      clothService: "Dry Cleaning",
    ),
    SettlementsList(
      clothName: 'Id: #7643',
      clothPrice: 232,
      // clothQuantity: 3,
      clothService: "Dry Cleaning",
    ),
    SettlementsList(
      clothName: 'Id: #7864',
      clothPrice: 248,
      // clothQuantity: 3,
      clothService: "Dry Cleaning",
    ),
    SettlementsList(
      clothName: 'Id: #3361',
      clothPrice: 809,
      // clothQuantity: 3,
      clothService: "Dry Cleaning",
    ),
    SettlementsList(
      clothName: 'Id: #1543',
      clothPrice: 506,
      // clothQuantity: 1,
      clothService: "Wash & Fold",
    ),
    SettlementsList(
      clothName: 'Id: #3142',
      clothPrice: 97,
      // clothQuantity: 2,
      clothService: "Wash & Iron",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/JustUs.png', height: 50),
          backgroundColor: AppColor.backgroundColor,
          elevation: 1,
          foregroundColor: Colors.black
          // actions: [
          //    Container(
          //     padding: EdgeInsets.only(right: 20),
          //     child: Image.asset('assets/images/JustUs.png', height: 27),
          //   ),

          // ],
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Total Amount to be Received",
                    style: GoogleFonts.varelaRound(
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124)),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "₹3,425",
                    style: TextStyle(fontSize: 55, color: AppColor.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Last Settlement Date :- 25/10/2022",
                    style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      color: Color.fromARGB(255, 124, 124, 124),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 230, 229, 229),
                    thickness: 5,
                    // height: ,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Text(
                    "Order Details",
                    style: GoogleFonts.varelaRound(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: settlementlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Text(
                          //   "${settlementlist[index].clothQuantity}",
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 14),
                          // ),
                          // SizedBox(
                          //   width: SizeConfig.screenWidth * 0.04,
                          // ),
                          // Text(
                          //   "x",
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold, fontSize: 14),
                          // ),
                          // SizedBox(
                          //   width: SizeConfig.screenWidth * 0.04,
                          // ),

                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.settlementsummary);
                            },
                            child: Expanded(
                              child: Text(
                                settlementlist[index].clothName,
                                style: GoogleFonts.varelaRound(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 45,
                          ),

                          Expanded(
                            child: Text(
                              settlementlist[index].clothService,
                              style: GoogleFonts.varelaRound(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "₹ ${settlementlist[index].clothPrice}",
                            style: GoogleFonts.varelaRound(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Total",
                        style: GoogleFonts.varelaRound(
                            color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "₹ 3425",
                        style: GoogleFonts.varelaRound(
                            color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bonus",
                        style: GoogleFonts.varelaRound(
                            color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "₹ 0",
                        style: GoogleFonts.varelaRound(
                            color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Earning",
                        style: GoogleFonts.varelaRound(
                            color: AppColor.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "₹ 3425",
                        style: GoogleFonts.varelaRound(
                            color: AppColor.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Expected Date of Settlement : 25/11/22",
                    style: GoogleFonts.varelaRound(
                        color: AppColor.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettlementsList {
  String clothName;
  int clothPrice;

  String clothService;

  SettlementsList(
      {required this.clothName,
      required this.clothPrice,
      required this.clothService});
}
