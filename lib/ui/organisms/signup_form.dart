import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/molecules/text_widget.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey _firstNameKey = GlobalKey();
  GlobalKey _lastNameKey = GlobalKey();
  GlobalKey _birthdayKey = GlobalKey();
  GlobalKey _emailKey = GlobalKey();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
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
                'First Name',
                style: TextStyle(
                  fontSize: medium14.fontSize,
                  fontWeight: medium14.fontWeight,
                  height: 1.64,
                ),
              ),
            ),
          ),
          TextWidget(
            key: _firstNameKey,
            hintText: 'Enter your first name',
            controller: _firstNameController,
          ),
          SizedBox(height: (screenSize.height / 45)),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20) +
                  EdgeInsets.only(bottom: (screenSize.height / 101.5)),
              child: Text(
                'Last Name',
                style: TextStyle(
                  fontSize: medium14.fontSize,
                  fontWeight: medium14.fontWeight,
                  height: 1.64,
                ),
              ),
            ),
          ),
          TextWidget(
            key: _lastNameKey,
            hintText: 'Enter your last name',
            controller: _lastNameController,
          ),
          Text(
            'Make sure it matches the name on your government ID',
            style: normal10,
          ),
          SizedBox(
            child: Divider(
              height: 1,
              color: brandOrange,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20) +
                  EdgeInsets.only(bottom: (screenSize.height / 101.5)),
              child: Text(
                'Birthday',
                style: TextStyle(
                  fontSize: medium14.fontSize,
                  fontWeight: medium14.fontWeight,
                  height: 1.64,
                ),
              ),
            ),
          ),
          Container(
            height: 43,
            decoration: BoxDecoration(
              color: brandWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(27.5),
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: brandWhite.withOpacity(0.5),
                borderRadius: BorderRadius.circular(28),
                onTap: () {},
              ),
            ),
          ),
          Text(
            'To sign up, you need to be at least 18. Other people who use Encostay won\'t see your birthday.',
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20) +
                  EdgeInsets.only(bottom: (screenSize.height / 101.5)),
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
          TextWidget(
            key: _emailKey,
            hintText: 'Enter your username or E-mail',
            controller: _emailController,
          ),
          Text(
            'By selecting Agree and continue below, I agree to Airbnb\'s Terms of Service, Payments Terms of Service, Privacy Policy, and Nondiscrimination Policy.',
          ),
          BrandButton(
            child: Text(
              'Agree and continue',
              style: TextStyle(
                fontSize: bold18.fontSize,
                fontWeight: bold18.fontWeight,
                height: bold18.height,
                color: brandWhite,
              ),
            ),
            color: brandOrange,
            height: 43,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
