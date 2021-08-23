import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Image(image: AssetImage('lib/assets/images/splash.png'),),
            CustomPaint(
              painter: CircularOverlay(screenSize: MediaQuery.of(context).size),
            ),
          ],
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
    Paint paintBrush = Paint()..color = brandOverlay..style = PaintingStyle.fill;
    canvas.drawCircle(Offset((screenSize.width * 0.06), (screenSize.height * 0.78)), (screenSize.width * 1.02), paintBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}