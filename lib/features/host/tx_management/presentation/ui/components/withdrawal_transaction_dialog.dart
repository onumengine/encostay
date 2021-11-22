import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/ui/components/payment_card_component.dart';
import 'package:encostay/models/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WithdrawalTransactionDialog extends StatelessWidget {
  const WithdrawalTransactionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 392,
      width: 365,
      color: ColorPalette.brandWhite,
      child: Column(children: [
        Container(
          height: 110,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                top: 14,
                left: 1,
                child: Container(
                  height: 16,
                  width: 13,
                  color: ColorPalette.brandOrange.withOpacity(0.2),
                ),
              ),
              Positioned(
                top: 61,
                left: 32,
                child: Container(
                  height: 32,
                  width: 33.34,
                  color: ColorPalette.brandBrown.withOpacity(0.15),
                ),
              ),
              Positioned(
                top: 43,
                right: 173,
                child: Container(
                  height: 32,
                  width: 33.34,
                  color: ColorPalette.brandOrange.withOpacity(0.15),
                ),
              ),
              Positioned(
                child:
                    SvgPicture.asset(VECTOR_IMAGES_PATH + 'host_earnings.svg'),
                top: -17,
                right: 25,
              ),
              Positioned(
                child: SvgPicture.asset(
                    VECTORS_ROOT_PATH + 'dots_grid_vertical.svg'),
                right: 6,
              ),
              Positioned(
                child: SvgPicture.asset(
                    VECTORS_ROOT_PATH + 'dots_grid_horizontal.svg'),
                top: 21,
                left: 30,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 20,
          child: Container(),
        ),
        Text(
          'You withdrew',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            height: 23 / 14,
            color: ColorPalette.searchBoxBackgroundColor,
          ),
        ),
        Expanded(
          flex: 13,
          child: Container(),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 49),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorPalette.brandOrange.withOpacity(0.15),
            boxShadow: [
              BoxShadow(
                color: ColorPalette.hostCardShadowColor.withOpacity(0.05),
                offset: Offset(0, 20),
                blurRadius: 40,
              ),
            ],
          ),
          child: Text(
            '\$250',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              height: 34 / 24,
              color: ColorPalette.searchBoxBackgroundColor,
            ),
          ),
        ),
        Expanded(
          flex: 13,
          child: Container(),
        ),
        Text(
          'to',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            height: 23 / 14,
            color: ColorPalette.searchBoxBackgroundColor,
          ),
        ),
        Expanded(
          flex: 13,
          child: Container(),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorPalette.brandBrown.withOpacity(0.06),
          ),
          child: PaymentCardComponent(
            card: DebitCard(
              name: 'John Doe Richdie',
              cardNumber: '1254125412541254',
              expiryDate: '10/24',
              cvv: '258',
              paymentProcessor: PaymentProcessor.mastercard,
            ),
          ),
        ),
      ]),
    );
  }
}
