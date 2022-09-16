import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //const Home({Key? key}) : super(key: key);
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Pree ID Card'),
        centerTitle: true,
        elevation: 0.0, //remove shadow bottom of App bar
        backgroundColor: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1637666505754-7416ebd70cbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                radius: 30.0,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.white,
              thickness: .8,
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.pinkAccent, letterSpacing: 1.0),
            ),
            SizedBox(height: 10),
            Text(
              'Preeti',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.pinkAccent,
                //letterSpacing: 1.0,
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$counter',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10, height: 60),
                Text(
                  'preety@gmail.com',
                  style: TextStyle(color: Colors.white, letterSpacing: 1.5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
