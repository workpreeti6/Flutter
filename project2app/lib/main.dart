import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home: Home()
));
class Home extends StatelessWidget {
 // const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'This is my first App',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
              child: Image.asset('assets/girl.jpg')),
          
          Expanded(
            flex: 2,
            child: Container(
              child: Text('One'),
              color: Colors.amber,
              padding: EdgeInsets.all(20),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text('two'),
              color: Colors.green,
              padding: EdgeInsets.all(20),
            ),
          ),
          
          Expanded(
            flex: 2,
            child: Container(
              child: Text('Three'),
              color: Colors.pink,
              padding: EdgeInsets.all(20),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Center(
          child: Text('Click'),
        ),
        backgroundColor: Colors.red[600],
      )
    );
  }
}

