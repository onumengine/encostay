import 'dart:async';

import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReceivingScreen extends StatefulWidget {
  const ReceivingScreen({Key? key}) : super(key: key);

  @override
  State<ReceivingScreen> createState() => _ReceivingScreenState();
}

class _ReceivingScreenState extends State<ReceivingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed(RouteNames.CONFIRMED);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(VECTOR_IMAGES_PATH + 'plane.svg'),
            SizedBox(
              height: screenSize.height / 33.83,
            ),
            Text(
              'Receiving',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 34 / 24,
                color: lightTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenSize.height / 67.66,
            ),
            Text(
              'the property\'s confirmation',
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: paleTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
