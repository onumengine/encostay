import 'package:encostay/ui/molecules/password_text_widget.dart';
import 'package:encostay/ui/molecules/text_widget.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey emailKey = GlobalKey();
  final GlobalKey passwordKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Username or E-mail'),
          TextWidget(
            key: emailKey,
            hintText: 'Enter your username or E-mail',
            controller: emailController,
          ),
          SizedBox(height: 18),
          Text('Username or E-mail'),
          PasswordTextWidget(
            key: passwordKey,
            hintText: 'Enter your username or E-mail',
            controller: passwordController,
          ),
        ],
      ),
    );
  }
}
