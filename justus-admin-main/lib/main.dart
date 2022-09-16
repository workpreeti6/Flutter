import 'package:flutter/material.dart';
import 'package:justus_admin/Routes/routes.dart';

void main() {
  runApp(const JustUs_admin());
}

class JustUs_admin extends StatelessWidget {
  const JustUs_admin({Key? key}) : super(key: key);

  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initialRoute,
      routes: Routes.route(context),
    );
  }
}
