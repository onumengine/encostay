import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class ResetFailureComponent extends StatelessWidget {
  const ResetFailureComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            'Password Reset Failed',
            style: medium18BrownDark,
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            'Set the new password for your account so you can login and access all the features',
            style: instructionalTextStyleModal,
          ),
        ),
        SizedBox(
          height: 41,
        ),
        BrandButton(
          height: 57,
          color: ColorPalette.brandOrange,
          child: Text(
            'Retry',
            style: TextStyle(
              fontSize: bold18.fontSize,
              fontWeight: bold18.fontWeight,
              height: bold18.height,
              color: ColorPalette.brandWhite,
            ),
          ),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Retrying password reset'),
              ),
            );
          },
        ),
        SizedBox(
          height: 64,
        ),
      ],
    );
  }
}
