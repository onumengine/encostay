import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) => IntroductionScreen(
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
              image: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'lib/assets/images/onboarding_1.png',
                  width: constraints.widthConstraints().maxWidth * 3 / 4,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
