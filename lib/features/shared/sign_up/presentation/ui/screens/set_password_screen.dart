import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_event.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  _SetPasswordScreenState createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  GlobalKey _createPasswordKey = GlobalKey();
  GlobalKey _confirmPasswordKey = GlobalKey();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: (screenHeight / 23.2)),
              Text(
                'Set Password',
                style: medium18brown,
              ),
              SizedBox(height: (screenHeight / 29)),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20) +
                      EdgeInsets.only(bottom: (screenHeight / 101.5)),
                  child: Text(
                    'Create Password',
                    style: TextStyle(
                      fontSize: medium14.fontSize,
                      fontWeight: medium14.fontWeight,
                      height: 1.64,
                    ),
                  ),
                ),
              ),
              TextWidget.obscured(
                key: _createPasswordKey,
                hintText: 'New Password',
                controller: _passwordController,
              ),
              SizedBox(
                height: (screenHeight / 58),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20) +
                      EdgeInsets.only(bottom: (screenHeight / 101.5)),
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
              TextWidget.obscured(
                key: _confirmPasswordKey,
                hintText: 'Confirm Password',
                controller: _confirmPasswordController,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20) +
                    EdgeInsets.only(top: screenHeight / 101.75),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit. Suspendisse ipsum leo molestie in arcu sapien',
                  style: normal10,
                ),
              ),
              SizedBox(height: (screenHeight / 12.49)),
              BlocConsumer<SignUpBloc, SignUpState>(
                bloc: BlocProvider.of<SignUpBloc>(context),
                listener: (context, state) {
                  if (state is DetectedInvalidInput) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Detected invalid input'),
                      ),
                    );
                  } else if (state is Validated) {
                    if (state.accountType == AccountType.guest) {
                      Navigator.of(context).pushNamed(RouteNames.ROUTE_HOME);
                    } else if (state.accountType == AccountType.host) {
                      Navigator.of(context)
                          .pushNamed(RouteNames.ROUTE_HOST_HOME);
                    }
                  }
                },
                builder: (context, state) {
                  if (state is ValidatingInput) {
                    return BrandButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: CircularProgressIndicator(
                          color: brandWhite,
                        ),
                      ),
                      onTap: () {
                        BlocProvider.of<SignUpBloc>(context).add(
                          SubmitPassword(
                            firstPasswordEntry: _passwordController.text,
                            secondPasswordEntry:
                                _confirmPasswordController.text,
                          ),
                        );
                      },
                      color: brandOrange,
                      height: 43,
                    );
                  } else {
                    return BrandButton(
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
                        print('Submitted password');
                        // BlocProvider.of<SignUpBloc>(context).add(
                        //   SubmitPassword(
                        //     firstPasswordEntry: _passwordController.text,
                        //     secondPasswordEntry:
                        //         _confirmPasswordController.text,
                        //   ),
                        // );
                        Navigator.of(context)
                            .pushNamed(RouteNames.ROUTE_HOST_HOME);
                      },
                      color: brandOrange,
                      height: 43,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
