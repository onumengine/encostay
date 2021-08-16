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
              titleWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Travel with no worry',
                  textAlign: TextAlign.start,
                ),
              ),
              bodyWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'You can now experience the next level travel experience for hotel bookings'),
              ),
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
