import 'package:flutter/material.dart';
import 'package:hackathon_project/onboarding_screen2.dart';
import 'package:hackathon_project/screens/onboarding_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen1(),
    );
  }
}
