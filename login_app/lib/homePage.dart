import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  var services = [
    'Sofa Cleaning Services',
    'Carpet Cleaning Services',
    'Deep Cleaning Services',
    'Office Cleaning Services',
    'Window Cleaning Services',
    'Post construction Cleaning Services',
    'Wall Painting Services',
    'Move In/Out Services',
    'Move In/Out Services',
  ];

  var images = [
    'assets/sofa.png',
    'assets/broom.png',
    'assets/cleaner.png',
    'assets/office.png',
    'assets/window.png',
    'assets/vaccume.png',
    'assets/paint_roller.png',
    'assets/move.png',
    'assets/window.png',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: (images.length - 1),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(children: [
              SizedBox(height: 20),
              Image.asset(images[index], height: 50, width: 50),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(services[index],
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
