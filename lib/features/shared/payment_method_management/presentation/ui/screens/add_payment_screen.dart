import 'package:encostay/core/widgets/atoms/payment_method_tile.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/bloc/add_payment_bloc.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/state/add_payment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorPalette.brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: ColorPalette.brandWhite,
        foregroundColor: ColorPalette.brandBrown,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<AddPaymentBloc, AddPaymentState>(
            builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 3, top: screenSize.height / 20.82),
                  child: Text(
                    'Pay with',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 34 / 24,
                      color: ColorPalette.lightTextColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        height: 25 / 14,
                        color: ColorPalette.lightTextColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Payment currency:    ',
                        ),
                        TextSpan(
                          text: 'USD',
                          style: TextStyle(
                            height: 25 / 14,
                            color: ColorPalette.paleTextColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height / 20.3,
                ),
                PaymentMethodTile(
                  iconPath: VECTORS_ROOT_PATH + 'card.svg',
                  label: 'Card',
                ),
                SizedBox(
                  height: screenSize.height / 28,
                ),
                PaymentMethodTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_google_pay.svg',
                  label: 'Google Pay',
                ),
                SizedBox(
                  height: screenSize.height / 54.13,
                ),
                PaymentMethodTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_paypal.svg',
                  label: 'Paypal',
                ),
                SizedBox(
                  height: screenSize.height / 54.13,
                ),
                PaymentMethodTile(
                  iconPath: VECTORS_ROOT_PATH + 'apple_pay.svg',
                  label: 'Apple Pay',
                  padding: EdgeInsets.symmetric(horizontal: 13) +
                      EdgeInsets.only(
                        top: 5,
                        bottom: 1,
                      ),
                ),
                SizedBox(
                  height: screenSize.height / 54.13,
                ),
                PaymentMethodTile(
                  iconPath: COLORED_VECTORS_PATH + 'ic_cash_app.svg',
                  label: 'Cash App',
                ),
                SizedBox(
                  height: screenSize.height / 54.13,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
