import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/account_screen.dart';
import 'package:hackathon_project/screens/booking_screen.dart';
import 'package:hackathon_project/screens/login/login_signup_screen.dart';
// import 'package:hackathon_project/screens/home_screen.dart';
import 'package:hackathon_project/screens/splash_screen.dart';
import 'package:hackathon_project/screens/weather%20Screen/weather_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class RentalApp extends StatefulWidget {
  const RentalApp({Key? key}) : super(key: key);

  @override
  _RentalAppState createState() => _RentalAppState();
}

class _RentalAppState extends State<RentalApp> {
  int _selectedIndex = 0;

  // for the bottom navigation bar
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WeatherScreen(),
    BookingScreen(),
    LoginScreen(),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _getIconColor(0)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: _getIconColor(1)),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login, color: _getIconColor(2)),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _getIconColor(3)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }

  Color _getIconColor(int index) {
    return _selectedIndex == index ? Colors.orange : Colors.black;
  }
}
