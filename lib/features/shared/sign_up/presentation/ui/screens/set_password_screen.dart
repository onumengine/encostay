import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_event.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_state.dart';
import 'package:encostay/injection_container.dart';
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
      body: BlocConsumer<SignUpBloc, SignUpState>(
        bloc: serviceLocator<SignUpBloc>(),
        listener: (context, state) {
          if (state is SignUpComplete) {
            if (state.accountType == 'HOST') {
              Navigator.of(context).pushNamed(RouteNames.HOST_HOME);
            } else if (state.accountType == 'GUEST') {
              Navigator.of(context).pushNamed(RouteNames.HOME);
            }
          }
        },
        builder: (context, state) {
          return SafeArea(
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
                  BrandButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: bold18.fontSize,
                        fontWeight: bold18.fontWeight,
                        height: bold18.height,
                        color: ColorPalette.brandWhite,
                      ),
                    ),
                    onTap: () {
                      BlocProvider.of<SignUpBloc>(context).add(
                        AppendPassword(
                          firstPasswordEntry: _passwordController.text,
                          secondPasswordEntry: _confirmPasswordController.text,
                        ),
                      );
                      BlocProvider.of<SignUpBloc>(context).add(SubmitForm());
                    },
                    color: ColorPalette.brandOrange,
                    height: 43,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
