import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionSummaryCard extends StatelessWidget {
  final num totalSum, percentIncrement;
  final VoidCallback? onTap;
  final String? buttonText;

  const TransactionSummaryCard({
    Key? key,
    this.totalSum = 2588,
    this.percentIncrement = 2.5,
    this.onTap,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.fromLTRB(20, 22, 14, 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.brandWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Available Balance',
                style: TextStyle(
                  fontSize: 12,
                  height: 18 / 12,
                  letterSpacing: -0.01,
                  color: ColorPalette.greySubtitleColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: screenSize.width / 18.51),
                child: SvgPicture.asset(ORANGE_VECTORS_PATH + 'shockwave.svg'),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '\$$totalSum',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 34 / 25,
                  letterSpacing: -0.03,
                  color: ColorPalette.brownTextColor,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+$percentIncrement%',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      height: 15 / 10,
                      color: ColorPalette.greySubtitleColor2,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  SvgPicture.asset(COLORED_VECTORS_PATH + 'ic_increment.svg'),
                  SizedBox(
                    width: 11.8,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenSize.height / 13.39,
          ),
          BrandButton(
            width: 167,
            height: 40,
            child: Text(
              buttonText ?? 'Withdraw Funds',
              style: TextStyle(
                color: ColorPalette.brandWhite,
                fontSize: 15,
                height: 20.46 / 15,
              ),
            ),
            onTap: onTap ?? () {},
            color: ColorPalette.brandOrange,
          ),
        ],
      ),
    );
  }
}
