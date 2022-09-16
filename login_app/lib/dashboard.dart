import 'package:flutter/material.dart';
import 'package:login_app/homePage.dart';

void main() {
  return runApp(MaterialApp(home: Dashboard()));
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Urban Clap'),
      ),
      backgroundColor: Color(0xFFF0F0F0),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More')
        ],
      ),
      body: getBodyWidget(),
    );
  }

  getBodyWidget() {
    return (_currentIndex == 0) ? HomePage() : Container();
  }
}
