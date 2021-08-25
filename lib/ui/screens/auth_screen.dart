import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('lib/assets/images/icon.png'),
                  height: 60,
                  width: 50,
                ),
                Text('encostay', style: TextStyle(
                  fontSize: bold20.fontSize,
                  fontWeight: bold20.fontWeight,
                  height: bold20.height,
                  color: brandBrown,
                ),),
                Text('Enjoy convenient stay'),
                SizedBox(height: 41),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 95),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
