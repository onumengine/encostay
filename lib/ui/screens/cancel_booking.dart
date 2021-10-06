import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class CancelBookingScreen extends StatefulWidget {
  const CancelBookingScreen({Key? key}) : super(key: key);

  @override
  _CancelBookingScreenState createState() => _CancelBookingScreenState();
}

class _CancelBookingScreenState extends State<CancelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: brandWhite,
        foregroundColor: lightTextColor,
        elevation: 0,
        title: Text('Cancel the entire booking'),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 19.5 / 16,
          color: lightTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Text(
              'Change of plans?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 34 / 24,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              decoration: BoxDecoration(
                color: brandLightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
