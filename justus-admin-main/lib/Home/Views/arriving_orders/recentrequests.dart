import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:justus_admin/Home/Views/Neworders/components/newordertabs.dart';
// import 'package:justus_admin/Home/Views/orders/components/newordertabs.dart';
import 'package:justus_admin/style/color.dart';

class RecentRequests extends StatelessWidget {
  const RecentRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Image.asset('assets/images/JustUs.png', height: 50),
        backgroundColor: AppColor.backgroundColor,
        elevation: 1,
      ),
      body: NewOrderTabs(),
    );
  }
}
