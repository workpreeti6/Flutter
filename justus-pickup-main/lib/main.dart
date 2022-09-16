import 'package:flutter/material.dart';
import 'package:justuspickup/Routes/routes.dart';

void main() {
  runApp(const VendorApp());
}

class VendorApp extends StatelessWidget {
  const VendorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initialRoute,
      routes: Routes.route(context),
    );
  }
}
