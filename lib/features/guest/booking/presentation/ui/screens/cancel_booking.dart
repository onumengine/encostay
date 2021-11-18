import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/brand_iconbutton.dart';
import 'package:encostay/core/widgets/molecules/custom_expansion_panel.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class CancelBookingScreen extends StatefulWidget {
  const CancelBookingScreen({Key? key}) : super(key: key);

  @override
  _CancelBookingScreenState createState() => _CancelBookingScreenState();
}

class _CancelBookingScreenState extends State<CancelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: ColorPalette.brandWhite,
        foregroundColor: ColorPalette.lightTextColor,
        elevation: 0,
        title: Text('Cancel the entire booking'),
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          height: 19.5 / 16,
          color: ColorPalette.lightTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Change of plans?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 34 / 24,
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: ColorPalette.brandLightGreen,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          IMAGES_PATH + 'apartment.png',
                          height: 73,
                          width: 64,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Perfect Room, East...',
                            style: TextStyle(
                              height: 25 / 14,
                              color: Color(0xff2f2f2f),
                            ),
                          ),
                          Text(
                            '\$172/night',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              height: 30 / 18,
                              color: Color(0xff2f2f2f),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  ColorPalette.brandDarkGreen.withOpacity(0.19),
                              width: 1,
                            ),
                          ),
                          child: BrandIconButton.svg(
                            iconPath: COLORED_VECTORS_PATH + 'ic_check.svg',
                            child: Text(
                              'Free cancellation',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff008680),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      BrandButton(
                        child: Text(
                          'Get info',
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorPalette.brandWhite,
                          ),
                        ),
                        onTap: () {},
                        color: ColorPalette.brandDarkGreen,
                        radius: 10,
                        padding: EdgeInsets.symmetric(
                            horizontal: 21.42, vertical: 8),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorPalette.redBgColor,
              ),
              child: CustomExpansionPanel(
                header: Text(
                  'You need to know',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 25 / 14,
                  ),
                ),
                body: Container(),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              width: screenSize.width / 1.69,
              child: Material(
                color: Colors.transparent,
                child: InkResponse(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(RouteNames.CANCELLATION_SURVEY);
                  },
                  splashColor: ColorPalette.brandOrange,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: ColorPalette.brandBrown,
                    ),
                    child: Center(
                      child: Text(
                        'Cancellation',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                          color: ColorPalette.brandWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
