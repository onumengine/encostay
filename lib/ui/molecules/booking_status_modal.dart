import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class BookingStatusModal extends StatelessWidget {
  const BookingStatusModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 74,
          ),
          Image.asset('lib/assets/images/password_reset_failure.png'),
          SizedBox(
            height: 28,
          ),
          Text(
            'Booking Decline',
            style: medium18BrownDark,
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Check your internet connection and try again to reset your password. Good luck!',
            style: instructionalTextStyleModal,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 41,
          ),
          BrandButton(
            height: 57,
            color: brandOrange,
            child: Text(
              'Check other space',
              style: TextStyle(
                fontSize: bold18.fontSize,
                fontWeight: bold18.fontWeight,
                height: bold18.height,
                color: brandWhite,
              ),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Checking other spaces'),
                ),
              );
            },
          ),
          SizedBox(
            height: 64,
          ),
        ],
      ),
    );
  }
}
