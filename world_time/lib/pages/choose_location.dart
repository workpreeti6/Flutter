import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('choose location screen')),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Location Page'),
        backgroundColor: Colors.teal,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
