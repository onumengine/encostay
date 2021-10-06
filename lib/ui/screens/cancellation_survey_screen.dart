import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class CancellationSurveyScreen extends StatefulWidget {
  const CancellationSurveyScreen({Key? key}) : super(key: key);

  @override
  _CancellationSurveyScreenState createState() =>
      _CancellationSurveyScreenState();
}

class _CancellationSurveyScreenState extends State<CancellationSurveyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brandWhite,
      appBar: AppBar(
        backgroundColor: brandWhite,
        foregroundColor: lightTextColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 19.5 / 16,
          color: lightTextColor,
        ),
      ),
    );
  }
}
