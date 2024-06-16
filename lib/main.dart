import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/khalti_screen.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'package:hackathon_project/screens/booking_screen.dart';
import 'package:hackathon_project/screens/home_screen.dart';
import 'package:hackathon_project/screens/login/login_signup_screen.dart';
import 'package:hackathon_project/screens/splash_screen.dart';

void main() {
  runApp(
    KhaltiScope(
      publicKey: 'test_public_key_a0e140de089d49198817b96f2d222588',
      builder: (context, navigatorKey) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          localizationsDelegates: const [
            KhaltiLocalizations.delegate,
          ],
          home: SplashScreen(), // Set SplashScreen as the initial route
        );
      },
    ),
  );
}

class RentalApp extends StatefulWidget {
  const RentalApp({Key? key}) : super(key: key);

  @override
  _RentalAppState createState() => _RentalAppState();
}

class _RentalAppState extends State<RentalApp> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookingScreen(),
    LoginScreen(),
    SplashScreen(),
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
            icon: Icon(Icons.payment),
            label: 'Payment',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}
