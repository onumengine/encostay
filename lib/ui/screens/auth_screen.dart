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
          child: Container(),
        ),
      ),
    );
  }
}