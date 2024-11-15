import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/login/login_signup_screen.dart';

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Spacer(flex: 2),
            // Image at the center
            Image.asset("assets/images/images.jpeg", height: 250, width: 250),
            const SizedBox(height: 20),
            // Bold text below the image
            const Text(
              'Pick up the car and start the journey.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Another text below it
            const Text(
              'Ready to hit the road?? Book now and embark the new journey of adventure with confidence. ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 3),
            // Page indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3, (index) => buildDot(index, 2)), // Assume 3 pages for now
            ),
            const SizedBox(height: 20),
            // Get Started button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // background color
                foregroundColor: Colors.white, // text color
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index, int currentIndex) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currentIndex ? Colors.orange : Colors.grey,
      ),
    );
  }
}
