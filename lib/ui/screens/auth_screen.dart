import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {

  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('lib/assets/images/icon.png'),),
                Text('encostay'),
                Text('Enjoy convenient stay'),
                SizedBox(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 95),
                  child: TabBar(tabs: <Tab>[
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}