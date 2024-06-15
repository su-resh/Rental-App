import 'package:flutter/material.dart';
import 'package:hackathon_project/screens/onboarding_screen3.dart';

class OnboardingScreen2 extends StatelessWidget {
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
            Image.asset(
              'assets/car.jpeg', // Update with your actual image path
              height: 250,
            ),
            const SizedBox(height: 20),
            // Bold text below the image
            const Text(
              'Rent your favourite car quickly and easily.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Another text below it
            const Text(
              'You can quickly mark your favourite cars,making it easier to find and  rent them whenever you need.',
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
              children: List.generate(3, (index) => buildDot(index, 0)), // Assume 3 pages for now
            ),
            const SizedBox(height: 20),
            // Skip and Next buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle skip action
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingScreen3()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // background color
                      foregroundColor: Colors.white, // text color
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
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


