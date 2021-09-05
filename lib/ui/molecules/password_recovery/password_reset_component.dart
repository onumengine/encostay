import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/atoms/password_text_widget.dart';
import 'package:encostay/ui/atoms/text_widget.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordResetComponent extends StatelessWidget {
  final GlobalKey _passwordKey = GlobalKey();
  final GlobalKey _confirmPasswordKey = GlobalKey();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  PasswordResetComponent({Key? key}) : super(key: key);

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
              'Reset Password',
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
              'Set the new password for your account so you can login and access all the features.',
              style: instructionalTextStyleModal,
            ),
          ),
        ),
        SizedBox(height: screenHeight / 36.9),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text(
              'Password',
              style: TextStyle(
                fontSize: medium14.fontSize,
                fontWeight: medium14.fontWeight,
                height: 1.64,
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight / 101.5),
        PasswordTextWidget(
          key: _passwordKey,
          hintText: 'Enter a new password',
          controller: _passwordController,
          height: 55,
          inputStyle: inputTextStyle,
        ),
        SizedBox(height: screenHeight / 33.83),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: medium14.fontSize,
                fontWeight: medium14.fontWeight,
                height: 1.64,
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight / 101.5),
        PasswordTextWidget(
          key: _confirmPasswordKey,
          hintText: 'Confirm your password',
          controller: _confirmPasswordController,
          height: 55,
          inputStyle: inputTextStyle,
        ),
        SizedBox(height: screenHeight / 21),
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
