import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  var services = [
    'Sofa Cleaning Services',
    'Carpet Cleaning Services',
    'Deep Cleaning Services',
    'Office Cleaning Services',
    'Window Cleaning Services',
    'Post construction Cleaning Services'
        'Wall Painting Services',
    'Move In/Out Services'
  ];

  var images = [
    'assets/broom.png',
    'assets/broom.png',
    'assets/cleaner.png',
    'assets/house.png',
    'assets/office.png',
    'assets/paint_roller.png',
    'assets/vaccume.png',
    'assets/window.png'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //itemCount: images.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(children: [
              SizedBox(height: 20),
              Image.asset('assets/paint_roller.png', height: 50, width: 50),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Servies',
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.2,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center))
            ]),
          );
        });
  }
}
