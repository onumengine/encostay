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
          ],
        ),
      ),
    );
  }
}