import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListingTile extends StatelessWidget {
  const ListingTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.brandWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              IMAGES_PATH + 'apartment.png',
              height: 93,
              width: 81,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: 33,
          ),
          Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    COLORED_VECTORS_PATH + 'ic_rating.svg',
                    width: 14,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 23 / 14,
                      color: Color(0xff2f2f2f),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '(245)',
                    style: TextStyle(
                      fontSize: 12,
                      height: 22 / 12,
                      color: Color(0xffa1a0a6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
