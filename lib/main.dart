import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/home_screen.dart';
// import 'package:hackathon_project/screens/splash_screen.dart';

class rentalApp extends StatelessWidget {
  const rentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

void main() {
  runApp(const MaterialApp(
    home: rentalApp(),
  ));
}
