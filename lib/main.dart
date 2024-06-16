import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/booking_screen.dart';
// import 'package:hackathon_project/screens/login/login_signup_screen.dart';
import 'package:hackathon_project/screens/home_screen.dart';
import 'package:hackathon_project/screens/login/login_signup_screen.dart';
// import 'package:hackathon_project/screens/splash_screen.dart';
import 'package:hackathon_project/screens/summary.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SummaryPage(),
  ));
}

class RentalApp extends StatefulWidget {
  const RentalApp({Key? key}) : super(key: key);

  @override
  _RentalAppState createState() => _RentalAppState();
}

class _RentalAppState extends State<RentalApp> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    BookingScreen(),
    LoginScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
