import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) => IntroductionScreen(
          done: Container(
            height: 41,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(28),
              ),
              color: brandBrown,
            ),
            child: Center(
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          onDone: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Clicked done"),
              ),
            );
          },
          next: Container(
            height: 41,
            width: 99,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(28),
              ),
              color: brandBrown,
            ),
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          showNextButton: true,
          dotsDecorator: DotsDecorator(
            size: Size.fromRadius(4.5),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            activeSize: Size(28, 9),
            activeColor: brandOrange,
          ),
          dotsFlex: 1,
          isTopSafeArea: false,
          rawPages: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.only(
                      left: constraints.maxWidth / 4,
                    ),
                    child: Image(
                      image: AssetImage('lib/assets/images/onboarding_1.png'),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25) +
                        EdgeInsets.only(top: constraints.maxHeight / 12.3),
                    child: Text(
                      'Travel with no worry',
                      style: semiBold24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25) +
                        EdgeInsets.only(top: constraints.maxHeight / 42.74),
                    child: Text(
                      'You can now experience the next level travel experience for hotel bookings',
                      style: regular14,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.only(
                      left: constraints.maxWidth / 4,
                    ),
                    child: Image(
                      image: AssetImage('lib/assets/images/onboarding_2.png'),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25) +
                        EdgeInsets.only(top: constraints.maxHeight / 12.3),
                    child: Text(
                      'Find Hundreds of hotels',
                      style: semiBold24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25) +
                        EdgeInsets.only(top: constraints.maxHeight / 42.74),
                    child: Text(
                      'Discover hundreds of hotels that spread across the world for you',
                      style: regular14,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: constraints.maxWidth,
                    padding: EdgeInsets.only(
                      left: constraints.maxWidth / 4,
                    ),
                    child: Image(
                      image: AssetImage('lib/assets/images/onboarding_3.png'),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25) +
                        EdgeInsets.only(top: constraints.maxHeight / 12.3),
                    child: Text(
                      'Let\'s discover the world',
                      style: semiBold24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25) +
                        EdgeInsets.only(top: constraints.maxHeight / 42.74),
                    child: Text(
                      'Book your hotel now for the next level travel experience. Enjoy your trip',
                      style: regular14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
