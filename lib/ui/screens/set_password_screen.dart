import 'package:encostay/ui/molecules/text_widget.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

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
              Text('Set Password'),
              SizedBox(height: (screenHeight / 29)),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  'Create Password',
                  style: TextStyle(
                    fontSize: medium14.fontSize,
                    fontWeight: medium14.fontWeight,
                    height: 1.64,
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
                child: Text(
                  'Create Password',
                  style: TextStyle(
                    fontSize: medium14.fontSize,
                    fontWeight: medium14.fontWeight,
                    height: 1.64,
                  ),
                ),
              ),
              TextWidget(
                key: _confirmPasswordKey,
                hintText: 'New Password',
                controller: _confirmPasswordController,
              ),
              Text(
                  'Lorem ipsum dolor sit amet consectetur adipiscing elit. Suspendisse ipsum leo molestie in arcu sapien'),
              SizedBox(height: 12.49),
            ],
          ),
        ),
      ),
    );
  }
}
