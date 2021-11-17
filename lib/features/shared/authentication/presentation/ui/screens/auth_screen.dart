import 'dart:ui';

import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/brand_iconbutton.dart';
import 'package:encostay/core/widgets/atoms/password_text_widget.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/core/widgets/molecules/modal_container.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_state.dart';
import 'package:encostay/features/shared/sign_up/presentation/ui/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    BlocConsumer<SignUpBloc, SignUpState>(
                      listener: (context, state) {
                        print(
                            'Just called the AuthBloc\'s consumer\'s listener');
                      },
                      builder: (context, state) {
                        if (state is Unregistered) {
                          return SignUpForm(
                            dateOfBirth: state.dateOfBirth,
                            accountType: state.accountType,
                          );
                        } else if (state is SigningUp) {
                          return SignUpForm(
                            dateOfBirth: state.dateOfBirth,
                            accountType: state.accountType,
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
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
              Navigator.of(context).pushNamed(RouteNames.ROUTE_HOME);
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
