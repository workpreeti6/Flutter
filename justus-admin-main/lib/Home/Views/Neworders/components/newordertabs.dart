import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:justus_admin/Home/Views/Neworders/rejected_requests.dart';

import 'package:justus_admin/Home/Views/arriving_orders/acceptedorders.dart';
import 'package:justus_admin/Home/Views/arriving_orders/pickeduporders.dart';
// import 'package:justus_admin/Home/Views/orders/pastorder.dart';

import '../new_requests.dart';

class NewOrderTabs extends StatelessWidget {
  const NewOrderTabs({Key? key}) : super(key: key);

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
                text: 'New Requests',
                icon: Icon(
                  Icons.new_releases,
                ),
              ),
              Tab(
                text: 'Rejected Requests',
                icon: Icon(
                  Icons.not_interested_rounded,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
              
                NewOrders(),
                //ActiveOrders(),
                PastOrders(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
