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
                TabBar(tabs: <Tab>[
                  Tab(
                    child: Text('Log in'),
                  ),
                  Tab(
                    child: Text('Sign Up'),
                  ),
                ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}