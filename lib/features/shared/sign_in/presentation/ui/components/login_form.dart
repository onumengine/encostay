import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/brand_iconbutton.dart';
import 'package:encostay/core/widgets/atoms/password_text_widget.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/core/widgets/molecules/modal_container.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_bloc.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_event.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        Navigator.of(context).pushNamed(RouteNames.HOME);
      },
      listenWhen: (oldState, newState) => newState is SignInComplete,
      builder: (context, state) {
        if (state is DefaultSignInState) {
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
                          color: ColorPalette.brandGreyAlt.withOpacity(0.8),
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
                    BlocProvider.of<SignInBloc>(context).add(SubmitSignInForm(
                      email: emailController.text,
                      password: passwordController.text,
                    ));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: bold18.fontSize,
                      fontWeight: bold18.fontWeight,
                      height: bold18.height,
                      color: ColorPalette.brandWhite,
                    ),
                  ),
                  color: ColorPalette.brandOrange,
                  height: 43,
                  width: double.infinity,
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
                          color: ColorPalette.brandBrown,
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
                          color: ColorPalette.brandBrown,
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
                            color: ColorPalette.brandGreyAlt,
                          ),
                        ),
                        color: ColorPalette.googleWhite,
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
                            color: ColorPalette.brandWhite,
                          ),
                        ),
                        color: ColorPalette.facebookBlue,
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
        } else if (state is SigningIn) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SignInFailed) {
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
                          color: ColorPalette.brandGreyAlt.withOpacity(0.8),
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
                    BlocProvider.of<SignInBloc>(context).add(SubmitSignInForm(
                      email: emailController.text,
                      password: passwordController.text,
                    ));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: bold18.fontSize,
                      fontWeight: bold18.fontWeight,
                      height: bold18.height,
                      color: ColorPalette.brandWhite,
                    ),
                  ),
                  color: ColorPalette.brandOrange,
                  height: 43,
                  width: double.infinity,
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
                          color: ColorPalette.brandBrown,
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
                          color: ColorPalette.brandBrown,
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
                            color: ColorPalette.brandGreyAlt,
                          ),
                        ),
                        color: ColorPalette.googleWhite,
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
                            color: ColorPalette.brandWhite,
                          ),
                        ),
                        color: ColorPalette.facebookBlue,
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
        } else {
          return Container();
        }
      },
    );
  }
}
