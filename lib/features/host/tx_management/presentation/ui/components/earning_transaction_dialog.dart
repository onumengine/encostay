import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EarningTransactionDialog extends StatelessWidget {
  const EarningTransactionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 392,
      width: 365,
      color: ColorPalette.brandWhite,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              ASSET_IMAGE_PATH + 'splash.png',
              height: screenSize.height / 4.19,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomRight,
            ),
          ),
          Expanded(
            flex: 17,
            child: Container(),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Perfect Room, East...',
              style: TextStyle(
                height: 25 / 14,
                color: ColorPalette.lightTextColor,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(),
          ),
          Row(
            children: [
              Text(
                '\$172/night',
                style: TextStyle(
                  height: 25 / 14,
                  color: ColorPalette.lightTextColor,
                ),
              ),
              Expanded(flex: 29, child: Container()),
              Row(
                children: [
                  SvgPicture.asset(ORANGE_VECTORS_PATH + 'ic_guest.svg'),
                  Text(
                    '1',
                    style: TextStyle(
                      height: 22 / 14,
                      color: ColorPalette.lightTextColor,
                    ),
                  ),
                ],
              ),
              Expanded(flex: 78, child: Container()),
              Row(
                children: [
                  SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_rating.svg'),
                  SizedBox(
                    width: 2,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '4.8 ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 23 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                      children: [
                        TextSpan(
                          text: ' (245)',
                          style: TextStyle(
                            fontSize: 12,
                            height: 22 / 12,
                            color: ColorPalette.paleTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Expanded(
            flex: 25,
            child: Container(),
          ),
          Text(
            'Earned \$344',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              height: 30 / 18,
              color: ColorPalette.lightTextColor,
            ),
          )
        ],
      ),
    );
  }
}
