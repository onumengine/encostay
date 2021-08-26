import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/molecules/password_text_widget.dart';
import 'package:encostay/ui/molecules/text_widget.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey emailKey = GlobalKey();
  final GlobalKey passwordKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20) +
                  EdgeInsets.only(bottom: (screenSize.height / 101.5)),
              child: Text(
                'Username or E-mail',
                style: TextStyle(
                  fontSize: medium14.fontSize,
                  fontWeight: medium14.fontWeight,
                  height: 1.64,
                ),
              ),
            ),
          ),
          TextWidget(
            key: emailKey,
            hintText: 'Enter your username or E-mail',
            controller: emailController,
          ),
          SizedBox(height: (screenSize.height / 45)),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20) +
                  EdgeInsets.only(bottom: (screenSize.height / 101.5)),
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
          PasswordTextWidget(
            key: passwordKey,
            hintText: 'Enter your username or E-mail',
            controller: passwordController,
          ),
          SizedBox(
            height: screenSize.height / 62.46,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Padding(
              padding: EdgeInsets.only(right: 23),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You forgot your password'),
                    ),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: regular10.fontSize,
                    height: regular10.height,
                    color: brandGreyAlt.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height / 21.9,
          ),
          BrandButton(
            onTap: () {},
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: bold18.fontSize,
                fontWeight: bold18.fontWeight,
                height: bold18.height,
                color: brandWhite,
              ),
            ),
            color: brandOrange,
            height: 43,
          ),
          SizedBox(height: screenSize.height / 9.78),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 57),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 1,
                    color: brandBrown,
                  ),
                ),
                SizedBox(width: 17),
                Text(
                  'Or login with',
                  style: medium12,
                ),
                SizedBox(width: 17),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 1,
                    color: brandBrown,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
