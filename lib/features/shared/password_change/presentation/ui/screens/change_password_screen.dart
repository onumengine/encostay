import 'package:encostay/core/utilities/colors.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/features/shared/password_change/presentation/logic_holders/bloc/change_password_bloc.dart';
import 'package:encostay/features/shared/password_change/presentation/logic_holders/state/change_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordScreen extends StatelessWidget {
  final GlobalKey _createPasswordKey = GlobalKey();
  final GlobalKey _confirmPasswordKey = GlobalKey();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Padding(
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
                          color: brandWhite,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(ROUTE_HOST_HOME);
                      },
                      color: brandOrange,
                      height: 43,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
