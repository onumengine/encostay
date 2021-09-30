import 'package:encostay/ui/atoms/payment_method_tile.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  _AddPaymentScreenState createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: brandWhite,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: brandWhite,
        foregroundColor: brandBrown,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  'Pay with',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    height: 34 / 24,
                    color: lightTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      height: 25 / 14,
                      color: lightTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Payment currency:    ',
                      ),
                      TextSpan(
                        text: 'USD',
                        style: TextStyle(
                          height: 25 / 14,
                          color: paleTextColor,
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
        ),
      ),
    );
  }
}
