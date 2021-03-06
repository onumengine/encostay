import 'package:encostay/core/widgets/molecules/listing_card.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OwnerProfileComponent extends StatefulWidget {
  const OwnerProfileComponent({Key? key}) : super(key: key);

  @override
  _OwnerProfileComponentState createState() => _OwnerProfileComponentState();
}

class _OwnerProfileComponentState extends State<OwnerProfileComponent> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: screenSize.height / 16.91,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 29) +
                EdgeInsets.only(bottom: 16.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorPalette.brandLight,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    height: 23 / 14,
                    color: ColorPalette.lightTextColor,
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 36.91,
                ),
                SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_quotes.svg'),
                SizedBox(
                  height: screenSize.height / 33.83,
                ),
                Text(
                  'I love to travel, I\'m from Transylvania (sort of), I really like peanut butter, I spend most of my time producing movies.',
                  style: TextStyle(
                    fontSize: 12,
                    height: 22 / 12,
                    color: ColorPalette.lightTextColor,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(
                        ORANGE_VECTORS_PATH + 'ic_orange_home.svg'),
                    SizedBox(
                      width: 10.5,
                    ),
                    Text(
                      'Lives in NY, USA',
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorPalette.redTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(
                        ORANGE_VECTORS_PATH + 'ic_orange_language.svg'),
                    SizedBox(
                      width: 10.5,
                    ),
                    Text(
                      'Speaks Deutsch, English, Italiano',
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorPalette.redTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(
                        ORANGE_VECTORS_PATH + 'ic_orange_briefcase.svg'),
                    SizedBox(
                      width: 10.5,
                    ),
                    Text(
                      'Work: United Nations, HBO',
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorPalette.redTextColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenSize.height / 16.92,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Roberto\'s listings',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    height: 30 / 18,
                    color: ColorPalette.lightTextColor,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 22 / 12,
                    color: ColorPalette.redTextColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: screenSize.height / 3.38,
            width: screenSize.width,
            child: ListView.separated(
              itemBuilder: (_, index) {
                return ListingCard();
              },
              separatorBuilder: (_, index) {
                return SizedBox();
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 24),
            ),
          ),
          SizedBox(
            height: 56,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xfffff4f1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset(ORANGE_VECTORS_PATH + 'ic_orange_alert.svg'),
                SizedBox(
                  width: 13,
                ),
                Text(
                  'Report this user',
                  style: TextStyle(
                    color: ColorPalette.lightTextColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 56,
          ),
        ],
      ),
    );
  }
}
