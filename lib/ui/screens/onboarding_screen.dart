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
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
            activeSize: Size(28, 9),
            activeColor: brandOrange,
          ),
          dotsFlex: 1,
          isTopSafeArea: false,
            /*
          pages: <PageViewModel>[
            PageViewModel(
              titleWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Travel with no worry',
                  textAlign: TextAlign.start,
                  style: semiBold24,
                ),
              ),
              bodyWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can now experience the next level travel experience for hotel bookings',
                  style: regular14,
                ),
              ),
              image: Align(
                alignment: Alignment.topRight,
                child: AspectRatio(
                  aspectRatio: 0.604751,
                  child: Image.asset(
                    'lib/assets/images/onboarding_1.png',
                    height: constraints.heightConstraints().maxHeight * 0.57,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Find Hundreds of hotels',
                  textAlign: TextAlign.start,
                  style: semiBold24,
                ),
              ),
              bodyWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Discover hundreds of hotels that spread across the world for you',
                  style: regular14,
                ),
              ),
              image: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'lib/assets/images/onboarding_2.png',
                  width: constraints.widthConstraints().maxWidth * 3 / 4,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            PageViewModel(
              titleWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Let\'s discover the world',
                  textAlign: TextAlign.start,
                  style: semiBold24,
                ),
              ),
              bodyWidget: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Book your hotel now for the next level travel experience. Enjoy your trip',
                  style: regular14,
                ),
              ),
              image: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'lib/assets/images/onboarding_3.png',
                  width: constraints.widthConstraints().maxWidth * 3 / 4,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
          */
          rawPages: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Image(
                    image: AssetImage('lib/assets/images/onboarding_1.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Travel with no worry'),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can now experience the next level travel experience for hotel bookings'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
