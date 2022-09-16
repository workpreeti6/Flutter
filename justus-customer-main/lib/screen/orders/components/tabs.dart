import 'package:flutter/material.dart';
import 'package:justusnew/screen/orders/View/order.dart';
import 'package:justusnew/screen/orders/View/past_order.dart';

class Tabs1 extends StatelessWidget {
  const Tabs1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            
            labelColor: Colors.blue,
            unselectedLabelColor: Color.fromARGB(255, 0, 0, 0),
            indicatorColor:Colors.blue,
            labelStyle: const TextStyle(fontWeight: FontWeight.w500,fontSize: 10),
            tabs: [
              Tab(
                text: 'New Orders',
                icon: Icon(
                  Icons.add_shopping_cart,
                ),
              ),
              Tab(
                text: 'Past Orders',
                icon: Icon(Icons.access_time),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                Orders(),
                PastOrder(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
