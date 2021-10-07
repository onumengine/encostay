import 'package:encostay/ui/atoms/survey_option_tile.dart';
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
        automaticallyImplyLeading: true,
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
        title: Text('Cancellation survey'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            Expanded(flex: 10, child: SizedBox()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              decoration: BoxDecoration(
                color: redBgColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Text(
                'Your booking won\'t be canceled until you answer this survey question',
                style: TextStyle(
                  fontSize: 12,
                  height: 22 / 12,
                  color: redTextColor,
                ),
              ),
            ),
            Expanded(
              flex: 35,
              child: SizedBox(),
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Tell us your reason for cancelling',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 30 / 18,
                ),
              ),
            ),
            Expanded(
              flex: 27,
              child: SizedBox(),
            ),
            SurveyOptionTile(title: 'Change of dates or destination'),
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            SurveyOptionTile(
                title:
                    'Made bookings for the same date - canceled the ones I don\'t need'),
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            SurveyOptionTile(title: 'Found a different accommodation option'),
            Expanded(
              flex: 8,
              child: SizedBox(),
            ),
            SurveyOptionTile(title: 'Personal reasons / Trip called off'),
            Expanded(
              flex: 96,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
