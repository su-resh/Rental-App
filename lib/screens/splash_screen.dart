import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_project/screens/home_screen.dart';

// Make sure to import the HomeScreen widget

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

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

    // Delay for 3 seconds before navigating to the HomeScreen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the app's logo
            Image.asset("assets/images/carrental.png", height: 250, width: 250),
            const SizedBox(height: 20),
            const Text(
              "Rental App",
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
