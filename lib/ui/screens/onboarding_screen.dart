import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text("Get Started"),
        onDone: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Clicked done"),
            ),
          );
        },
        showNextButton: false,
        pages: <PageViewModel>[
          PageViewModel(
            title: 'Find Hundreds of hotels',
            body:
                'Discover hundreds of hotels that spread across the world for you',
          ),
        ],
      ),
    );
  }
}
