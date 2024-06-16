import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_project/screens/onboarding_screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // Set the UI to immersive mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Delay for 3 seconds before navigating to the OnboardingScreen1
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnboardingScreen1()),
      );
    });
  }

  @override
  void dispose() {
    // Restore the system UI overlays before disposing of the state
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://i.postimg.cc/SQM5Ghk7/Untitled-design.png",
            height: 250,
          ),
          const SizedBox(height: 5),
          const Text(
            "Sajilo Rental",
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
