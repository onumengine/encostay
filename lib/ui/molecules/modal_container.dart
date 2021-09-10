import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/atoms/password_text_widget.dart';
import 'package:encostay/ui/atoms/text_widget.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ModalContainer extends StatefulWidget {
  final double screenHeight;

  const ModalContainer({Key? key, required this.screenHeight})
      : super(key: key);

  @override
  _ModalContainerState createState() => _ModalContainerState();
}

class _ModalContainerState extends State<ModalContainer> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey _emailKey = GlobalKey();
  final GlobalKey _passwordKey = GlobalKey();
  final GlobalKey _confirmPasswordKey = GlobalKey();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  List<Widget>? _pages;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      _emailEntryComponent(),
      _otpEntryComponent(),
      _passwordResetComponent(),
      _resetSuccessComponent(),
      _resetFailureComponent(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: _pages?[_currentPage],
      ),
    );
  }

  Widget _emailEntryComponent() => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: widget.screenHeight / 14),
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
          SizedBox(height: widget.screenHeight / 58),
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
          SizedBox(height: widget.screenHeight / 36.9),
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
          SizedBox(height: widget.screenHeight / 101.5),
          TextWidget(
            key: _emailKey,
            hintText: 'Enter your email',
            controller: _emailController,
            height: 55,
            inputStyle: inputTextStyle,
          ),
          SizedBox(height: widget.screenHeight / 21.37),
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
              setState(() {
                _currentPage = 1;
              });
            },
          ),
          SizedBox(height: widget.screenHeight / 14),
        ],
      );

  Widget _otpEntryComponent() => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: widget.screenHeight / 14),
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
          SizedBox(height: widget.screenHeight / 58),
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
          SizedBox(height: widget.screenHeight / 21.37),
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
              setState(() {
                _currentPage = 2;
              });
            },
          ),
          SizedBox(height: widget.screenHeight / 14),
        ],
      );

  Widget _passwordResetComponent() => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: widget.screenHeight / 14),
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
          SizedBox(height: widget.screenHeight / 58),
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
          SizedBox(height: widget.screenHeight / 36.9),
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
          SizedBox(height: widget.screenHeight / 101.5),
          PasswordTextWidget(
            key: _passwordKey,
            hintText: 'Enter a new password',
            controller: _passwordController,
            height: 55,
            inputStyle: inputTextStyle,
          ),
          SizedBox(height: widget.screenHeight / 33.83),
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
          SizedBox(height: widget.screenHeight / 101.5),
          PasswordTextWidget(
            key: _confirmPasswordKey,
            hintText: 'Confirm your password',
            controller: _confirmPasswordController,
            height: 55,
            inputStyle: inputTextStyle,
          ),
          SizedBox(height: widget.screenHeight / 21),
          BrandButton(
            height: 57,
            color: brandOrange,
            child: Text(
              'Reset Password',
              style: TextStyle(
                fontSize: bold18.fontSize,
                fontWeight: bold18.fontWeight,
                height: bold18.height,
                color: brandWhite,
              ),
            ),
            onTap: () {
              setState(() {
                _currentPage = 3;
              });
            },
          ),
          SizedBox(height: widget.screenHeight / 14),
        ],
      );

  Widget _resetFailureComponent() => Column(
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
            color: brandOrange,
            child: Text(
              'Retry',
              style: TextStyle(
                fontSize: bold18.fontSize,
                fontWeight: bold18.fontWeight,
                height: bold18.height,
                color: brandWhite,
              ),
            ),
            onTap: () {
              setState(() {
                _currentPage = 4;
              });
            },
          ),
          SizedBox(
            height: 64,
          ),
        ],
      );

  Widget _resetSuccessComponent() => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 74,
          ),
          Image.asset('lib/assets/images/password_reset_success.png'),
          SizedBox(
            height: 28,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'Reset Password Successful',
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
            color: brandOrange,
            child: Text(
              'Close',
              style: TextStyle(
                fontSize: bold18.fontSize,
                fontWeight: bold18.fontWeight,
                height: bold18.height,
                color: brandWhite,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 64,
          ),
        ],
      );
}
