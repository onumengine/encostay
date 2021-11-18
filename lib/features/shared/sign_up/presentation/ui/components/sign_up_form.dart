import 'dart:ui';

import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/core/widgets/atoms/brand_button.dart';
import 'package:encostay/core/widgets/atoms/text_widget.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/core/utilities/text_styles.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class SignUpForm extends StatelessWidget {
  DateTime? _dateOfBirth;
  AccountType? _accountType;

  SignUpForm({
    required dateOfBirth,
    required accountType,
    Key? key,
  })  : _dateOfBirth = dateOfBirth,
        _accountType = accountType,
        super(key: key);
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
              key: GlobalKey<FormState>(),
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
              key: GlobalKey<FormState>(),
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
                color: ColorPalette.brandOrange,
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
              key: GlobalKey<FormState>(),
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
                color: ColorPalette.brandWhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(27.5),
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: ColorPalette.brandWhite.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(28),
                  onTap: () async {
                    var selectedDate = await showRoundedDatePicker(
                      height: 395,
                      onTapDay: (tappedDate, isTapped) {
                        _dateOfBirth = tappedDate;
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
                        backgroundHeader: ColorPalette.brandOrange,
                        backgroundActionBar: ColorPalette.brandOrange,
                        textStyleButtonPositive:
                            TextStyle(color: ColorPalette.brandWhite),
                        textStyleButtonNegative:
                            TextStyle(color: ColorPalette.brandWhite),
                        paddingMonthHeader: EdgeInsets.only(top: 12),
                        decorationDateSelected: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: ColorPalette.brandOrange,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    );
                    BlocProvider.of<SignUpBloc>(context)
                        .add(SelectDateOfBirth(selectedDate!));
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
                color: ColorPalette.brandWhite,
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
                  BlocProvider.of<SignUpBloc>(context)
                      .add(SelectAccountType(dropdownValue!));
                },
                items: <DropdownMenuItem<AccountType>>[
                  DropdownMenuItem<AccountType>(
                    child: Text(
                      'Host',
                    ),
                    value: AccountType.host,
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
                  color: ColorPalette.brandGreyAlt,
                ),
                hint: Text(
                  'I want to book',
                  style: TextStyle(
                    fontSize: normal14.fontSize,
                    height: normal14.height,
                    fontWeight: normal14.fontWeight,
                    color: ColorPalette.brandGrey,
                  ),
                ),
                disabledHint: Text(
                  'Currently disabled',
                  style: TextStyle(
                    fontSize: normal14.fontSize,
                    height: normal14.height,
                    fontWeight: normal14.fontWeight,
                    color: ColorPalette.brandGrey,
                  ),
                ),
                underline: SizedBox(
                  height: 0,
                ),
                iconEnabledColor: ColorPalette.brandOrange,
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
                  color: ColorPalette.brandWhite,
                ),
              ),
              color: ColorPalette.brandOrange,
              height: 43,
              onTap: () {
                Navigator.of(context).pushNamed(RouteNames.SET_PASSWORD);
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
