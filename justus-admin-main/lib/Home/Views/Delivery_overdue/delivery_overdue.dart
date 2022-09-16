import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:justus_admin/Common/size_config.dart';
import 'package:justus_admin/Home/components/myorder.dart';
import 'package:justus_admin/style/color.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class DeliveryOverDueOrders extends StatefulWidget {
  const DeliveryOverDueOrders({Key? key}) : super(key: key);
  @override
  State<DeliveryOverDueOrders> createState() => OrdersState();
}

class OrdersState extends State<DeliveryOverDueOrders> {
  var searchController = TextEditingController();
  bool isIconVisible = false;

  final List<myorder> orderslist = [
    myorder(
        title: "#3125",
        category: 'Dry Cleaning',
        deliverydate: DateTime.now(),
        status: 'In Progress',
        estdil: '21/09/2022',
        price: 48,
        mop: 'Pay on Dilevery',
        status_admin: "Delivery Overdue by 2 Days",
        cat_icon: Icons.abc),
    myorder(
      title: '#3943',
      category: 'Knitting',
      deliverydate: DateTime.now(),
      status: 'In Progress',
      estdil: '12/09/2022',
      price: 100,
      mop: 'UPI',
      status_admin: "Delivery Overdue by 1 Days",
    ),
    myorder(
      title: "#2123",
      category: 'Ironing',
      deliverydate: DateTime.now(),
      status: 'In Progress',
      estdil: '12/08/2022',
      price: 120,
      mop: 'Credit Card',
      status_admin: "Delivery Overdue by 3 Days",
    ),
    myorder(
      title: '#2314',
      category: 'Washing',
      deliverydate: DateTime.now(),
      status: 'In Progress',
      estdil: '15/12/2022',
      price: 39,
      mop: 'Debit Card',
      status_admin: "Delivery Overdue by 19 Hours",
    ),
    myorder(
      title: '#3943',
      category: 'Knitting',
      deliverydate: DateTime.now(),
      status: 'In Progress',
      estdil: '12/09/2022',
      price: 100,
      mop: 'UPI',
      status_admin: "Delivery Overdue by 4 Days",
    ),
    myorder(
      title: '#6635',
      category: 'Ironing',
      deliverydate: DateTime.now(),
      status: 'In Progress',
      estdil: '12/12/2022',
      price: 15,
      mop: 'Credit Card',
      status_admin: "Delivery Overdue by 2 Days",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Image.asset('assets/images/JustUs.png', height: 50),
        backgroundColor: AppColor.backgroundColor,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.assignment_late,color: Colors.grey,),
                SizedBox(width: 5,),
                Text(
                  "Delivery Overdues",
                  style: GoogleFonts.varelaRound(
                      // decoration: TextDecoration.underline,
                      // decorationStyle: TextDecorationStyle.wavy,
                      fontSize: 24,
                      color: Colors.grey),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: ListView.builder(
                    itemCount: orderslist.length,
                    itemBuilder: (BuildContext context, int index) =>
                        buildOrderCard(context, index)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderCard(context, int index) {
    final ordersdata = orderslist[index];
    return Card(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.035,
          vertical: MediaQuery.of(context).size.width * 0.02),
      elevation: 2.10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(vertical:10, horizontal: 20),

      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        child: ExpandablePanel(
          header: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.local_laundry_service_sharp,
                  color: AppColor.blue,
                  size: getProportionateScreenWidth(22.10),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
              Text(
                "Order ID - ${(ordersdata.title!)}",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.bold

                    // fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.start,
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                    size: getProportionateScreenWidth(20),
                    Icons.phone,
                    color: AppColor.blue),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.error,
                    size: getProportionateScreenWidth(18), color: Colors.red),
                onPressed: () {},
              ),

              // Spacer(),
              // IconButton(
              //   icon: Icon(
              //     size: getProportionateScreenWidth(22.10),
              //     Icons.star,
              //     color: orderslist[index].isFavourite!
              //         ? Colors.red
              //         : Colors.grey,
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       orderslist[index].isFavourite =
              //           !orderslist[index].isFavourite!;
              //     });
              //   },
              // ),
            ],
          ),
          collapsed: const SizedBox.shrink(),
          expanded: Column(
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(
              //       right: 20.0, left: 20, bottom: 8),
              // child: Row(
              //   children: [
              //     Align(
              //       alignment: Alignment.centerLeft,
              //       child: Icon(
              //         Icons.local_laundry_service_sharp,
              //         color: AppColor.blue,
              //         size: getProportionateScreenWidth(22.10),
              //       ),
              //     ),
              //     SizedBox(
              //       width: getProportionateScreenWidth(20),
              //     ),
              //     Text(
              //       "Order ID - ${(ordersdata.title!)}",
              //       style: TextStyle(
              //           fontSize: MediaQuery.of(context).size.width * 0.04,
              //           fontWeight: FontWeight.bold

              //           // fontWeight: FontWeight.bold,
              //           ),
              //       textAlign: TextAlign.start,
              //     ),
              //     Spacer(),
              //     IconButton(
              //       icon: Icon(
              //           size: getProportionateScreenWidth(20),
              //           Icons.phone,
              //           color: AppColor.blue),
              //       onPressed: () {},
              //     ),
              //     // Spacer(),
              //     // IconButton(
              //     //   icon: Icon(
              //     //     size: getProportionateScreenWidth(22.10),
              //     //     Icons.star,
              //     //     color: orderslist[index].isFavourite!
              //     //         ? Colors.red
              //     //         : Colors.grey,
              //     //   ),
              //     //   onPressed: () {
              //     //     setState(() {
              //     //       orderslist[index].isFavourite =
              //     //           !orderslist[index].isFavourite!;
              //     //     });
              //     //   },
              //     // ),
              //   ],
              // ),
              // ),
              Divider(
                color: AppColor.backgroundColor,
                thickness: 2,
              ),
              Container(
                // alignment: Alignment.center,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                    left: getProportionateScreenWidth(30)),
                // decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Service",
                            style: TextStyle(
                                color: AppColor.blue,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Pickup Date",
                            style: TextStyle(
                                color: AppColor.blue,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Delivery Date",
                            style: TextStyle(
                                color: AppColor.blue,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ":",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(":"),
                        SizedBox(
                          height: 15,
                        ),
                        Text(":"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ordersdata.category!}",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${DateFormat('dd/MM/yyyy').format(ordersdata.deliverydate).toString()}",
                            style: TextStyle(
                                color: AppColor.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${ordersdata.estdil}",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "₹ ${ordersdata.price!}",
                            style: TextStyle(fontSize: 27, color: Colors.red),
                          ),
                          Text(
                            "${ordersdata.mop!}",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.lightGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                // child: Divider(
                //   color: Color.fromARGB(255, 209, 209, 209),
                //   thickness: 2,
                //   // height: 30, //height spacing of divider
                // ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: AppColor.lightGrey,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      ShaderMask(
                        blendMode: BlendMode.srcATop,
                        shaderCallback: ((bounds) => LinearGradient(
                              colors: [Colors.red, Colors.blue],
                            ).createShader(bounds)),
                        child: Icon(
                          Icons.watch_later,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(15),
                      ),
                      Text(
                        ordersdata.status_admin!,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),

                      ElevatedButton(
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.green),
                        child: Text("Call Agent"),
                        onPressed: () {
                          Navigator.pushNamed(context, 'ordersummary');
                        },
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      // ElevatedButton(
                      //   style: TextButton.styleFrom(
                      //       primary: Colors.white, backgroundColor: Colors.red),
                      //   child: Icon(Icons.close),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, 'ordersummary');
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
