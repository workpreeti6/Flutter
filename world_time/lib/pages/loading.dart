import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loding Screen'),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Loading Page'),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
