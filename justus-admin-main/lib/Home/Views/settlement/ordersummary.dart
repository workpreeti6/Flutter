import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:justus_admin/Common/size_config.dart';
import 'package:justus_admin/style/color.dart';

class SettlementSummary extends StatelessWidget {
  SettlementSummary({Key? key, this.ind}) : super(key: key);

  int? ind;
  List<ClothList> clothList = [
    ClothList(
      clothName: 'Shirt (Men)',
      clothPrice: 10,
      clothQuantity: 2,
      clothService: 'Wash & Iron',
    ),
    ClothList(
      clothName: 'Trousers (Men)',
      clothPrice: 10,
      clothQuantity: 3,
      clothService: "Wash & Iron",
    ),
    ClothList(
      clothName: 'Jeans (Men)',
      clothPrice: 10,
      clothQuantity: 1,
      clothService: "Wash & Fold",
    ),
    ClothList(
      clothName: 'T-shirt (Women)',
      clothPrice: 9,
      clothQuantity: 2,
      clothService: "Wash & Iron",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as SettlementSummary;
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Order ID: #1245",
              style: GoogleFonts.varelaRound(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            Text(
              "25/09/22",
              style: GoogleFonts.varelaRound(
                  fontSize: 13,
                  fontWeight: FontWeight.w200,
                  color: AppColor.grey),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Order Status",
                    style: GoogleFonts.varelaRound(
                        fontSize: 17, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Delivered".toUpperCase(),
                    style: GoogleFonts.varelaRound(
                        fontSize: 24, color: AppColor.blue),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 230, 229, 229),
                    thickness: 5,
                    height: 30,
                  ),
                  // Text(
                  //   " Service :",
                  //   style: GoogleFonts.varelaRound(
                  //       decoration: TextDecoration.underline,
                  //       decorationStyle: TextDecorationStyle.double,
                  //       fontSize: 15,
                  //       color: Colors.grey),
                  // ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // Text(
                  //   "Ironing",
                  //   style: GoogleFonts.varelaRound(
                  //       fontSize: 20, color: AppColor.blue),
                  // ),
                  // Divider(
                  //   color: Color.fromARGB(255, 230, 229, 229),
                  //   thickness: 5,
                  //   height: 30,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.edit_calendar_outlined,
                                  color: AppColor.grey,
                                ),
                                Text(
                                  "Pick up Date",
                                  style: GoogleFonts.varelaRound(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                // SizedBox(height: 30,)
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "22/09/22",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.more_time_sharp,
                                    color: AppColor.grey),
                                Text(
                                  "Pick up Time",
                                  style: GoogleFonts.varelaRound(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "10:09AM",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Divider(
                    color: Color.fromARGB(255, 230, 229, 229),
                    thickness: 5,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Turn Around Time :-",
                      style: GoogleFonts.varelaRound(
                          // decoration: TextDecoration.underline,
                          // decorationStyle: TextDecorationStyle.wavy,
                          fontSize: 24,
                          color: Colors.grey),
                    ),
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenWidth * 0.075),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SizedBox(width: 10,),
                              Text(
                                "Dry Cleaning :",
                                style: GoogleFonts.varelaRound(
                                  color: AppColor.blue,
                                  fontSize: 14,
                                ),
                              ),
                              Text("26/09/22",
                                  style: GoogleFonts.varelaRound(
                                    fontSize: 14,
                                  )),
                              // SizedBox(width: 5,)
                            ],
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 230, 229, 229),
                          thickness: 1,
                          // height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.screenWidth * 0.075),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  SizedBox(width: 10,),
                              Text(
                                "Ironing :",
                                style: GoogleFonts.varelaRound(
                                  color: AppColor.blue,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "25/09/22",
                                style: GoogleFonts.varelaRound(
                                  fontSize: 14,
                                ),
                              ),
                              //  SizedBox(width: 3,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 230, 229, 229),
                    thickness: 5,
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColor.blue,
                        size: 35,
                      ),
                      Text(
                        "  Pickup Address",
                        style: GoogleFonts.varelaRound(
                            color: Colors.grey, fontSize: 24),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color.fromARGB(255, 230, 229, 229),
                    thickness: 1,
                    // height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "53 , Marunji , Hinjewadi , Pune",
                          style: GoogleFonts.varelaRound(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Address Line 2",
                          style: GoogleFonts.varelaRound(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Address Line 3",
                          style: GoogleFonts.varelaRound(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color.fromARGB(255, 230, 229, 229),
                    thickness: 5,
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 14),
                    child: Row(
                      children: [
                        Text(
                          "Cloth List",
                          style: GoogleFonts.varelaRound(
                              fontSize: 24, color: Colors.grey),
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
                      itemCount: clothList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "${clothList[index].clothQuantity}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.04,
                                ),
                                Text(
                                  "x",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.04,
                                ),
                                Expanded(
                                  child: Text(
                                    clothList[index].clothName,
                                    style: GoogleFonts.varelaRound(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    clothList[index].clothService,
                                    style: GoogleFonts.varelaRound(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "₹ ${clothList[index].clothPrice * clothList[index].clothQuantity}",
                                  style: GoogleFonts.varelaRound(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
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
                              "₹ 78",
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
                              "Service Fee",
                              style: GoogleFonts.varelaRound(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "₹ 22",
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
                              "Total Estimated Cost",
                              style: GoogleFonts.varelaRound(
                                  color: AppColor.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "₹ 100",
                              style: GoogleFonts.varelaRound(
                                  color: AppColor.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
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

class ClothList {
  String clothName;
  int clothPrice;
  int clothQuantity;
  String clothService;

  ClothList(
      {required this.clothName,
      required this.clothPrice,
      required this.clothQuantity,
      required this.clothService});
}



// Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Row(
                  //             children: [
                  //               Text("2"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text("x"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text(
                  //                 "Shirts (Men)",
                  //               ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Text("3"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text("x"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text(
                  //                 "Trouser (Men)",
                  //               ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Text("1"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text("x"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text(
                  //                 "Jeans (Men)",
                  //               ),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Text("2"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text("x"),
                  //               SizedBox(
                  //                 width: SizeConfig.screenWidth * 0.04,
                  //               ),
                  //               Text(
                  //                 "T-shirts (Women)",
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //       // SizedBox(
                  //       //   width: 30,
                  //       // ),
                  //       Column(
                  //         children: const [
                  //           Text("Wash & Iron"),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Text("Wash & Iron"),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Text("Wash & Fold"),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Text("Wash & Iron"),
                  //         ],
                  //       ),
                  //       Column(
                  //         children: const [
                  //           Text("₹ 20"),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Text("₹ 25"),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Text("₹ 10"),
                  //           SizedBox(
                  //             height: 15,
                  //           ),
                  //           Text("₹ 18"),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Sub Total"),
                  //           Text("₹ 78"),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 12,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Service Fee"),
                  //           Text("₹ 27"),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 12,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text("Total Estimated Cost"),
                  //           Text("₹ 100"),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // )