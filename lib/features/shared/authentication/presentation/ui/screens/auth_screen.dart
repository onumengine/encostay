import 'dart:io';
import 'dart:ui';

import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/brand_iconbutton.dart';
import 'package:encostay/core/widgets/atoms/password_text_widget.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/ui/molecules/modal_container.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class AuthScreen extends StatefulWidget {
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: brandBackground,
                elevation: 0,
                expandedHeight: /*(screenSize.height / 3.5)*/ 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: (screenSize.height / 23.2)),
                      Image(
                        image: AssetImage('lib/assets/images/icon.png'),
                        height: 60,
                        width: 50,
                      ),
                      ListTile(
                        title: Center(
                          child: Text(
                            'encostay',
                            style: TextStyle(
                              fontSize: bold20.fontSize,
                              fontWeight: bold20.fontWeight,
                              height: bold20.height,
                              color: brandBrown,
                            ),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            'Enjoy convenient stay',
                            style: TextStyle(
                              fontSize: medium13.fontSize,
                              fontWeight: medium14.fontWeight,
                              height: medium14.height,
                              color: brandBrown,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: (screenSize.height / 19.8)),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(
                      kToolbarHeight + (screenSize.height / 19.8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 95) +
                        EdgeInsets.only(bottom: 8),
                    child: TabBar(
                      tabs: <Tab>[
                        Tab(
                          child: Text('Log in'),
                        ),
                        Tab(
                          child: Text('Sign Up'),
                        ),
                      ],
                      indicator: BoxDecoration(
                        color: brandBrown,
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      labelStyle: regular14,
                      labelColor: brandWhite,
                      unselectedLabelStyle: regular14,
                      unselectedLabelColor: brandGrey,
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: <Widget>[
                    LoginForm(),
                    SignUpForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
            hintText: 'Enter your password',
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
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    builder: (context) => ModalContainer(
                      screenHeight: screenSize.height,
                    ),
                    isScrollControlled: true,
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
            onTap: () {
              Navigator.of(context).pushNamed(ROUTE_HOME);
            },
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
          SizedBox(height: (screenSize.height / 54.13)),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BrandIconButton.svg(
                  iconPath: COLORED_VECTORS_PATH + 'ic_google.svg',
                  child: Text(
                    'Google',
                    style: TextStyle(
                      fontSize: bold14.fontSize,
                      fontWeight: bold14.fontWeight,
                      height: bold14.height,
                      color: brandGreyAlt,
                    ),
                  ),
                  color: googleWhite,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Google sign in initiated'),
                      ),
                    );
                  },
                  height: 36,
                ),
                SizedBox(width: 19),
                BrandIconButton.svg(
                  iconPath: COLORED_VECTORS_PATH + 'ic_fb.svg',
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: medium12.fontSize,
                      fontWeight: medium12.fontWeight,
                      height: medium12.height,
                      color: brandWhite,
                    ),
                  ),
                  color: facebookBlue,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Google sign in initiated'),
                      ),
                    );
                  },
                  height: 36,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey _firstNameKey = GlobalKey();
  GlobalKey _lastNameKey = GlobalKey();
  GlobalKey _emailKey = GlobalKey();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  AccountType? _accountType;
  DateTime? _dateOfBirth = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
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
            SizedBox(height: (screenSize.height / 162.4)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Make sure it matches the name on your government ID',
                style: normal10,
              ),
            ),
            SizedBox(height: (screenSize.height / 45)),
            SizedBox(
              child: Divider(
                thickness: 1,
                color: brandOrange,
              ),
            ),
            SizedBox(height: (screenSize.height / 81.2)),
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
            SizedBox(height: (screenSize.height / 81.2)),
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
              width: double.infinity,
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
                  onTap: () {
                    setState(() async {
                      _dateOfBirth = await showRoundedDatePicker(
                        height: 395,
                        onTapDay: (tappedDate, isTapped) {
                          setState(() {
                            _dateOfBirth = tappedDate;
                          });
                          return isTapped;
                        },
                        initialDate: DateTime(
                          DateTime.now().year - 18,
                          DateTime.now().month,
                          DateTime.now().day,
                        ),
                        firstDate: DateTime(DateTime.now().year - 150),
                        lastDate: DateTime(
                          DateTime.now().year - 18,
                          DateTime.now().month,
                          DateTime.now().day,
                        ),
                        textPositiveButton: 'Save',
                        textNegativeButton: 'Clear All',
                        context: context,
                        styleDatePicker: MaterialRoundedDatePickerStyle(
                          backgroundHeader: brandOrange,
                          backgroundActionBar: brandOrange,
                          textStyleButtonPositive: TextStyle(color: brandWhite),
                          textStyleButtonNegative: TextStyle(color: brandWhite),
                          paddingMonthHeader: EdgeInsets.only(top: 12),
                          decorationDateSelected: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: brandOrange,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12) +
                        EdgeInsets.only(left: 35),
                    child: Text(
                      (_dateOfBirth.toString()).split(' ').elementAt(0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: (screenSize.height / 31.2)),
            Container(
              height: 43,
              padding: EdgeInsets.only(left: 35, right: 33),
              decoration: BoxDecoration(
                color: brandWhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(27.5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x10939393),
                    blurRadius: 6,
                    offset: Offset.fromDirection(0.2),
                  ),
                ],
              ),
              child: DropdownButton<AccountType>(
                value: _accountType,
                onChanged: (dropdownValue) {
                  setState(() {
                    _accountType = dropdownValue;
                  });
                },
                items: <DropdownMenuItem<AccountType>>[
                  DropdownMenuItem<AccountType>(
                    child: Text(
                      'User',
                    ),
                    value: AccountType.user,
                  ),
                  DropdownMenuItem<AccountType>(
                    child: Text(
                      'Guest',
                    ),
                    value: AccountType.guest,
                  ),
                ],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 23 / 14,
                  color: brandGreyAlt,
                ),
                hint: Text(
                  'I want to book',
                  style: TextStyle(
                    fontSize: normal14.fontSize,
                    height: normal14.height,
                    fontWeight: normal14.fontWeight,
                    color: brandGrey,
                  ),
                ),
                disabledHint: Text(
                  'Currently disabled',
                  style: TextStyle(
                    fontSize: normal14.fontSize,
                    height: normal14.height,
                    fontWeight: normal14.fontWeight,
                    color: brandGrey,
                  ),
                ),
                underline: SizedBox(
                  height: 0,
                ),
                iconEnabledColor: brandOrange,
                isExpanded: true,
                elevation: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 49),
              child: Text(
                'To sign up, you need to be at least 18. Other people who use Encostay won\'t see your birthday.',
                style: normal10,
              ),
            ),
            SizedBox(height: (screenSize.height / 23.2)),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 13),
              child: Text(
                'By selecting Agree and continue below, I agree to Airbnb\'s Terms of Service, Payments Terms of Service, Privacy Policy, and Nondiscrimination Policy.',
                style: normal10,
              ),
            ),
            SizedBox(height: (screenSize.height / 47.76)),
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
              onTap: () {
                Navigator.of(context).pushNamed(ROUTE_SET_PASSWORD);
              },
            ),
            SizedBox(
              height: (screenSize.height / 7.52),
            ),
          ],
        ),
      ),
    );
  }
}
