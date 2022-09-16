import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:justus_admin/Common/size_config.dart';
import 'package:justus_admin/Home/components/myorder.dart';
import 'package:justus_admin/style/color.dart';

class NewOrders extends StatefulWidget {
  const NewOrders({Key? key}) : super(key: key);
  @override
  State<NewOrders> createState() => OrdersState();
}

class OrdersState extends State<NewOrders> {
  var searchController = TextEditingController();
  bool isIconVisible = false;

  final List<myorder> orderslist = [
    myorder(
        title: "#1245",
        category: 'Ironing',
        
        deliverydate: DateTime.now(),
        
        status: 'In Progress',
        estdil: '28/11/2002',
        price: 28,
        mop: 'Pay on Dilevery',
        status_admin: "New order",
        cat_icon: Icons.abc),
        myorder(
      title: "#2365",
      category: 'Washing',
      
      deliverydate: DateTime.now(),
      
      status: 'In Progress',
      estdil: '12/12/2022',
      price: 31,
      mop: 'Credit Card',
      status_admin: "New Order",
    ),
     myorder(
      title: '#5478',
      category: 'Washing',
      
      deliverydate: DateTime.now(),
      
      status: 'In Progress',
      estdil: '15/12/2022',
      price: 39,
      mop: 'Debit Card',
      status_admin: "New Order",
    ),
    myorder(
      title: "#2365",
      category: 'Washing',
      
      deliverydate: DateTime.now(),
      
      status: 'In Progress',
      estdil: '12/12/2022',
      price: 31,
      mop: 'Credit Card',
      status_admin: "New order",
    ),
    myorder(
      title: '#5478',
      category: 'Washing',
      
      deliverydate: DateTime.now(),
      
      status: 'In Progress',
      estdil: '15/12/2022',
      price: 39,
      mop: 'Debit Card',
      status_admin: "New order",
    ),
    myorder(
      title: '#6937',
      category: 'Knitting',
      
      deliverydate: DateTime.now(),
      
      status: 'In Progress',
      estdil: '12/09/2022',
      price: 100,
      mop: 'UPI',
      status_admin: "New order",
    ),
    myorder(
      title: '#6635',
      category: 'Ironing',
      
      deliverydate: DateTime.now(),
      
      status: 'In Progress',
      estdil: '12/12/2022',
      price: 15,
      mop: 'Credit Card',
      status_admin: "New order",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
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
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10,bottom: 10),
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
              // IconButton(
              //   icon: Icon(
              //       size: getProportionateScreenWidth(20),
              //       Icons.phone,
              //       color: AppColor.blue),
              //   onPressed: () {},
              // ),
              IconButton(
                icon: Icon(
                    size: getProportionateScreenWidth(25),
                    Icons.check_circle,
                    color: Colors.green,
                    ),
                onPressed: () {},
              ),
              
              IconButton(
                icon: Icon(
                    size: getProportionateScreenWidth(25),
                    Icons.cancel,
                    color: Colors.red),
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
                                color: AppColor.black,
                                fontWeight: FontWeight.w500),
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
                            style: TextStyle(
                                fontSize: 27,
                                color: Color.fromARGB(255, 75, 75, 75)),
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
                              colors: [Colors.green, Colors.blue],
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
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                icon: Icon(
                    size: getProportionateScreenWidth(20),
                    Icons.phone,
                    color: AppColor.blue),
                onPressed: () {},
              ),

                      // ElevatedButton(
                      //   style: TextButton.styleFrom(
                      //       primary: Colors.white,
                      //       backgroundColor: Colors.green),
                      //   child: Icon(Icons.check),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, 'ordersummary');
                      //   },
                      // ),
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
