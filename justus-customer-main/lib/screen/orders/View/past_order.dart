import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:justusnew/screen/orders/components/myorder.dart';
import 'package:justusnew/style/color.dart';

import '../../../common/size_config.dart';

import '../components/myorder.dart';

class PastOrder extends StatefulWidget {
  const PastOrder({Key? key}) : super(key: key);
  @override
  State<PastOrder> createState() => OrdersState();
}

class OrdersState extends State<PastOrder> {
  var searchController = TextEditingController();
  bool isIconVisible = false;

  final List<myorder> P_orderslist = [
    myorder(
        title: "#1234",
        category: 'Washing',
        endplace: 'Kerala',
        deliverydate: DateTime.now(),
        travelType: 'Airplane',
        status: 'Delivered',
        estdil: 'Est. Date',
        price: 48,
        mop: 'Pay on Dilevery',
        cat_icon: Icons.abc),
    myorder(
      title: "#2305",
      category: 'Washing',
      endplace: 'Punjab',
      deliverydate: DateTime.now(),
      travelType: 'Truck',
      status: 'Delivered',
      estdil: 'Est. Date',
      price: 51,
      mop: 'Credit Card'
    ),
    myorder(
      title: '#4712',
      category: 'Washing',
      endplace: 'Gujarat',
      deliverydate: DateTime.now(),
      travelType: 'Ship',
      status: 'Delivered',
      estdil: 'Est. Date',
      price: 30,
      mop: 'Debit Card'
    ),
    myorder(
      title: '#1237',
      category: 'Knitting',
      endplace: 'Haryana',
      deliverydate: DateTime.now(),
      travelType: 'Airplane',
      status: 'Delivered',
      estdil: 'Est. Date',
      price: 21,
      mop: 'UPI'
    ),
    myorder(
      title: '#6625',
      category: 'Ironing',
      endplace: 'West Bengal',
      deliverydate: DateTime.now(),
      travelType: 'Ship',
      status: 'Delivered',
      estdil: 'Est. Date',
      price: 500,
      mop: 'Credit Card'
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
                itemCount: P_orderslist.length,
                itemBuilder: (BuildContext context, int index) =>
                    buildOrderCard(context, index)),
          ),
        ),
      ],
    );
  }

  Widget buildOrderCard(context, int index) {
    final ordersdata = P_orderslist[index];
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
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20, top: 15,bottom: 8),
            child: Row(
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
                // Spacer(),
                // IconButton(
                //   icon: Icon(
                //     size: getProportionateScreenWidth(22.10),
                //     Icons.star,
                //     color: P_orderslist[index].isFavourite!
                //         ? Colors.red
                //         : Colors.grey,
                //   ),
                //   onPressed: () {
                //     setState(() {
                //       P_orderslist[index].isFavourite =
                //           !P_orderslist[index].isFavourite!;
                //     });
                //   },
                // ),
              ],
            ),
          ),
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
                        "Category",
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Pickup"),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Dilevery"),
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
                      ), SizedBox(height: 15,),
                      Text(
                          "${DateFormat('dd/MM/yyyy').format(ordersdata.deliverydate).toString()}"), SizedBox(height: 15,),
                      Text(
                          "${DateFormat('dd/MM/yyyy').format(ordersdata.deliverydate).toString()}"),
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
                        style: TextStyle(fontSize: 27,color: Color.fromARGB(255, 75, 75, 75)),
                      ),
                      Text(
                        "${ordersdata.mop!}",
                        style: TextStyle(fontSize: 10,color:Colors.grey),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColor.backgroundColor,
            thickness: 2,
            // height: 30, //height spacing of divider
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Row(
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: ((bounds) => LinearGradient(
                        colors: [Colors.green, Colors.blue],
                      ).createShader(bounds)),
                  child: Icon(
                    Icons.check_circle,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(15),
                ),
                Text(
                  ordersdata.status!,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: AppColor.lightBlue),
                  child: const Text('Order Summary'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'ordersummary');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
