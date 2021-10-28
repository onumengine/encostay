import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpEntryComponent extends StatelessWidget {
  const OtpEntryComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: screenHeight / 14),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              'Enter 4-digit code',
              style: medium18BrownDark,
            ),
          ),
        ),
        SizedBox(height: screenHeight / 58),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              'Enter your email for the verification preocess. We will send a 4-digit code to your email',
              style: instructionalTextStyleModal,
            ),
          ),
        ),
        SizedBox(height: 39),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: OTPTextField(
            length: 4,
            fieldWidth: 59,
            fieldStyle: FieldStyle.box,
          ),
        ),
        SizedBox(height: screenHeight / 21.37),
        BrandButton(
          height: 57,
          color: brandOrange,
          child: Text(
            'Continue',
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
                content: Text('Email submitted'),
              ),
            );
          },
        ),
        SizedBox(height: screenHeight / 14),
      ],
    );
  }
}
