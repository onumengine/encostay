import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/atoms/text_widget.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class EmailEntryComponent extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey _emailKey = GlobalKey();

  EmailEntryComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(
              'Forgot password',
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
        SizedBox(height: screenHeight / 36.9),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Text(
              'Email',
              style: TextStyle(
                fontSize: medium14.fontSize,
                fontWeight: medium14.fontWeight,
                height: 1.64,
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight / 101.5),
        TextWidget(
          key: _emailKey,
          hintText: 'Enter your email',
          controller: _emailController,
          height: 55,
          inputStyle: inputTextStyle,
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
      ],
    );
  }
}
