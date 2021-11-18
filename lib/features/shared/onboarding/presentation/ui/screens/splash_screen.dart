import 'package:encostay/features/shared/onboarding/presentation/ui/screens/onboarding_screen.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('lib/assets/images/splash.png'),
                width: screenSize.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: CustomPaint(
                  painter: CircularOverlay(screenSize: screenSize),
                ),
              ),
              Positioned(
                top: (screenSize.height / 2.3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('lib/assets/images/icon_bg.png'),
                          width: 123.46,
                        ),
                        Image(
                          image: AssetImage('lib/assets/images/icon.png'),
                          width: 50,
                          height: 60,
                        ),
                      ],
                    ),
                    Text(
                      'encostay',
                      style: splashTitle,
                    ),
                    Text('Enjoy convenient stay.', style: medium15),
                    SizedBox(
                      height: (screenSize.height * 0.09),
                    ),
                    InkResponse(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => OnboardingScreen(),
                          ),
                        );
                      },
                      splashColor: ColorPalette.brandWhite,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: (screenSize.width / 3.6)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(29),
                          ),
                          color: ColorPalette.brandBrown,
                        ),
                        child: Center(
                          child: Text('Get started',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorPalette.brandWhite,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircularOverlay extends CustomPainter {
  Size screenSize;

  CircularOverlay({this.screenSize = const Size(0, 0)});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paintBrush = Paint()
      ..color = ColorPalette.brandOverlay
      ..style = PaintingStyle.fill;
    canvas.drawCircle(
        Offset((screenSize.width * 0.06), (screenSize.height * 0.78)),
        (screenSize.width * 1.02),
        paintBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
