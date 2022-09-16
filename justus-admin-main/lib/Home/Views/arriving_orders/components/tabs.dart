import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:justus_admin/Home/Views/arriving_orders/acceptedorders.dart';
import 'package:justus_admin/Home/Views/arriving_orders/pickeduporders.dart';



class TabsOrders extends StatelessWidget {
  const TabsOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
            indicatorColor: Colors.blue,
            labelStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            // indicatorSize: ,
            tabs: [
              Tab(
                  text: 'Accepted Orders',
                  icon: Icon(
                    Icons.add_shopping_cart,
                  )
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top:8.0),
                  //   child: Column(
                  //     children: [
                  //       Icon(Icons.add_shopping_cart_sharp,size: 25,),
                  //       Text(
                  //         "New Orders",
                  //         style: TextStyle(color: Colors.black),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  ),
              //Tab(text: 'Active Orders', icon: Icon(Icons.access_time)
                  // child: Padding(
                  //    padding: const EdgeInsets.only(top:8.0),
                  //   child: Column(
                  //     children: [
                  //       Icon(Icons.access_time,size: 25,),
                  //       Text(
                  //         "Past Orders",
                  //         style: TextStyle(color: Colors.black),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //),
              Tab(
                text: 'Picked Up Orders',
                icon: Icon(Icons.emoji_transportation),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                AcceptedOrders(),
                PickedupOrders(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
