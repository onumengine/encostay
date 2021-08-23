import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(image: AssetImage('lib/assets/images/splash.png'),),
            Positioned(
              top: 0,
                left: 0,
              child: CustomPaint(
                painter: CircularOverlay(screenSize: screenSize),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('lib/assets/images/icon_bg.png'), width: 123.46,),
                    Image(image: AssetImage('lib/assets/images/icon.png'), width: 50, height: 60,),
                  ],
                ),
                Text('encostay', style: splashTitle,),
                Text('Enjoy convenient stay.', style: medium15),
                SizedBox(height: (screenSize.height * 0.09),),
      InkResponse(
        onTap: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped get started'),),);
        },
        splashColor: brandWhite,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: (screenSize.width / 3.6)),
          padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(29),
            ),
            color: brandBrown,
          ),
          child: Center(
            child: Text(
              'Get started',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: brandWhite,
              )
            ),
          ),
        ),
      ),
              ],
            )
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