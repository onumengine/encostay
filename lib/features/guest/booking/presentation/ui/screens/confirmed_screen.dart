import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmedScreen extends StatelessWidget {
  const ConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(VECTOR_IMAGES_PATH + 'booking_confirmed.svg'),
            SizedBox(
              height: screenSize.height / 33.83,
            ),
            Text(
              'Confirmed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 34 / 24,
                color: ColorPalette.lightTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: screenSize.height / 67.66,
            ),
            Text(
              'you\'ll get an email with your booking confirmation',
              style: TextStyle(
                fontSize: 12,
                height: 22 / 12,
                color: ColorPalette.paleTextColor,
              ),
            ),
            SizedBox(
              height: screenSize.height / 3.79,
            ),
            BrandButton(
              child: Text(
                'Back to home',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 23 / 14,
                  color: ColorPalette.brandWhite,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(RouteNames.HOME, (route) => false);
              },
              color: ColorPalette.brandBrown,
              height: 58,
              width: 174,
            ),
            SizedBox(
              height: screenSize.height / 25.37,
            ),
          ],
        ),
      ),
    );
  }
}
