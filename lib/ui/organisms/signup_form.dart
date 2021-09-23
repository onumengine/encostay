import 'package:encostay/ui/atoms/brand_button.dart';
import 'package:encostay/ui/atoms/text_widget.dart';
import 'package:encostay/ui/screens/set_password_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AccountType {
  user,
  guest,
}

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
  AccountType? _accountType;
  DateTime? _dateOfBirth = DateTime.now();
  List<String>? _listOfCountries = [
    'Namibia',
    'Nicaragua',
    'Nigeria',
    'Niger',
  ];
  String? _selectedCountry;

  @override
  void initState() {
    super.initState();
    _selectedCountry = _listOfCountries![0];
  }

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
            SizedBox(height: (screenSize.height / 64.46)),
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
                        initialDate: DateTime(DateTime.now().year - 18),
                        firstDate: DateTime(DateTime.now().year - 150),
                        lastDate: DateTime(DateTime.now().year - 18),
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
                  child: Center(
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
            SizedBox(height: (screenSize.height / 47.76)),
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SetPasswordScreen(),
                  ),
                );
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
