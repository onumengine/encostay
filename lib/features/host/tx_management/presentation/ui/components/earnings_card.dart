import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EarningsCard extends StatelessWidget {
  const EarningsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.brandWhite,
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            bottom: 24,
            left: 25,
            child: Container(
              height: 16,
              width: 13,
              color: ColorPalette.brandOrange.withOpacity(0.2),
            ),
          ),
          Positioned(
            bottom: 22,
            left: 130,
            child: Container(
              height: 32,
              width: 33.34,
              color: ColorPalette.brandOrange.withOpacity(0.15),
            ),
          ),
          Positioned(
            child: SvgPicture.asset(VECTOR_IMAGES_PATH + 'host_earnings.svg'),
            bottom: 7,
            right: 18,
          ),
          Positioned(
            child:
                SvgPicture.asset(VECTORS_ROOT_PATH + 'dots_grid_vertical.svg'),
            right: 10,
          ),
          Positioned(
            child: SvgPicture.asset(
                VECTORS_ROOT_PATH + 'dots_grid_horizontal.svg'),
            bottom: 16,
            left: 48,
          ),
          Positioned(
            top: 20,
            left: 23,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Earnings',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 18.29 / 15,
                      color: ColorPalette.brownTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  BrandButton(
                    child: Text(
                      'View',
                      style: TextStyle(
                        fontSize: 15,
                        height: 18.29 / 15,
                        color: ColorPalette.brandWhite,
                      ),
                    ),
                    onTap: () {},
                    color: ColorPalette.brandOrange,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
