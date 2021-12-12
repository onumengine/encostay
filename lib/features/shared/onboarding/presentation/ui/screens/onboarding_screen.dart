import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/blocs/onboarding_bloc.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/events/onboarding_event.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/states/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize.width);
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) =>
            BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingComplete) {
              Navigator.of(context).pushReplacementNamed(RouteNames.AUTH);
            }
          },
          builder: (context, state) {
            return IntroductionScreen(
              done: Container(
                height: 41,
                width: screenSize.width,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(28),
                  ),
                  color: ColorPalette.brandBrown,
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: (screenSize.width < 400) ? 10 : 12,
                    ),
                  ),
                ),
              ),
              onDone: () {
                BlocProvider.of<OnboardingBloc>(context).add(
                  CompleteOnboarding(),
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
                  color: ColorPalette.brandBrown,
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
                activeColor: ColorPalette.brandOrange,
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
                          image:
                              AssetImage('lib/assets/images/onboarding_1.png'),
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
                          image:
                              AssetImage('lib/assets/images/onboarding_2.png'),
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
                          image:
                              AssetImage('lib/assets/images/onboarding_3.png'),
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
            );
          },
        ),
      ),
    );
  }
}
