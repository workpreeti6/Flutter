import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:justusnew/common/size_config.dart';
import 'package:justusnew/routes/routes.dart';

void main() {
  runApp(const JustUs());
}

class JustUs extends StatelessWidget {
  const JustUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  SizeConfig().init(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initialRoute,
      routes: Routes.route(context),
    );
  }
}
