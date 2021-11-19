import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum TransactionType {
  earning,
  withdrawal,
}

class TransactionTile extends StatelessWidget {
  final TransactionType transactionType;
  late String transactionKeyword;
  final num amount;
  late String iconPath;

  TransactionTile({
    Key? key,
    this.transactionType = TransactionType.earning,
    this.amount = 50.00,
  }) : super(key: key) {
    if (this.transactionType == TransactionType.earning) {
      this.transactionKeyword = 'earned';
      this.iconPath = COLORED_VECTORS_PATH + 'ic_increment.svg';
    } else if (this.transactionType == TransactionType.withdrawal) {
      this.transactionKeyword = 'withdrew';
      this.iconPath = COLORED_VECTORS_PATH + 'ic_decrement.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 19, horizontal: 16) +
          EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPalette.brandWhite,
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            spreadRadius: 0,
            offset: Offset(0, 20),
            color: ColorPalette.hostCardShadowColor.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'You $transactionKeyword',
              style: TextStyle(
                fontSize: 12,
                height: 18.28 / 12,
                letterSpacing: -0.01,
                color: ColorPalette.greySubtitleColor,
              ),
              children: [
                TextSpan(
                  text: ' \$$amount',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    height: 20.46 / 15,
                    letterSpacing: -0.3,
                    color: ColorPalette.searchBoxBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Text(
            '21:00 15 March',
            style: TextStyle(
              fontSize: 12,
              height: 18.28 / 12,
              letterSpacing: -0.01,
              color: ColorPalette.brandGold,
            ),
          ),
          SizedBox(width: 12),
          SvgPicture.asset(iconPath),
        ],
      ),
    );
  }
}
