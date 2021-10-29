import 'dart:ui';

import 'package:encostay/core/widgets/atoms/flat_iconbutton.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/apartment_details_screen.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResultCard extends StatefulWidget {
  const SearchResultCard({Key? key}) : super(key: key);

  @override
  _SearchResultCardState createState() => _SearchResultCardState();
}

class _SearchResultCardState extends State<SearchResultCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(ROUTE_APARTMENT_DETAILS);
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(17, 14, 15, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: brandWhite,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 300 / 218.6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage('lib/assets/images/apartment_pic.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 12,
                  child: Container(
                    height: 27,
                    width: 47.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0x20ffffff),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 3.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              COLORED_VECTORS_PATH + 'ic_rating.svg',
                              width: 10.5,
                              height: 10.5,
                            ),
                            Text(
                              '4.0',
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                height: 18 / 8,
                                color: brandWhite,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isFavorited = !_isFavorited;
                      });
                    },
                    child: SvgPicture.asset(
                      COLORED_VECTORS_PATH + 'ic_favorite.svg',
                      width: 19,
                      height: 17,
                      color: (_isFavorited) ? brandYellow : brandWhite,
                    ),
                  ),
                  top: 20,
                  right: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Marvin House',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        height: 18 / 10,
                      ),
                    ),
                    Text(
                      'Lagos, Nigeria',
                      style: TextStyle(
                        fontSize: 8,
                        height: 18 / 8,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatIconButton(
                      iconPath: COLORED_VECTORS_PATH + 'ic_bed.svg',
                      text: '3 Bedroom',
                    ),
                    SizedBox(
                      width: 11.8,
                    ),
                    FlatIconButton(
                      iconPath: COLORED_VECTORS_PATH + 'ic_wifi.svg',
                      text: 'Wifi',
                    ),
                    SizedBox(
                      width: 11.8,
                    ),
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: brandOrange,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: brandWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5.73,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 8,
                      height: 18 / 8,
                      color: Color(0xffa1a0a6),
                    ),
                    children: [
                      TextSpan(
                        text: '\$230 ',
                        style: TextStyle(
                          color: brandOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 23 / 14,
                        ),
                      ),
                      TextSpan(text: '/ Day'),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '5.0',
                      style: TextStyle(
                        fontSize: 10,
                        height: 9 / 5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          COLORED_VECTORS_PATH + 'ic_rating.svg',
                          width: 20,
                          height: 20,
                        ),
                        SvgPicture.asset(
                          COLORED_VECTORS_PATH + 'ic_rating.svg',
                          width: 20,
                          height: 20,
                        ),
                        SvgPicture.asset(
                          COLORED_VECTORS_PATH + 'ic_rating.svg',
                          width: 20,
                          height: 20,
                        ),
                        SvgPicture.asset(
                          COLORED_VECTORS_PATH + 'ic_rating.svg',
                          width: 20,
                          height: 20,
                        ),
                        SvgPicture.asset(
                          COLORED_VECTORS_PATH + 'ic_rating.svg',
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
