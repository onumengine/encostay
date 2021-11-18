import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListingCard extends StatelessWidget {
  const ListingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SvgPicture.asset(VECTOR_IMAGES_PATH + 'listing.svg'),
          ),
          Text(
            '\$210',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 30 / 18,
              color: ColorPalette.lightTextColor,
            ),
          ),
          SizedBox(height: 3),
          Text(
            'Manhattan Lux',
            style: TextStyle(
              fontSize: 12,
              height: 22 / 12,
              color: ColorPalette.paleTextColor,
            ),
          ),
          SizedBox(height: 2),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_rating.svg'),
              SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_rating.svg'),
              SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_rating.svg'),
              SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_rating.svg'),
              SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_rating.svg'),
            ],
          )
        ],
      ),
    );
  }
}
