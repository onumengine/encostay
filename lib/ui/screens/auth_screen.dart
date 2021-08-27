import 'package:encostay/ui/organisms/login_form.dart';
import 'package:encostay/ui/organisms/signup_form.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: brandBackground,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('lib/assets/images/icon.png'),
                        height: 60,
                        width: 50,
                      ),
                      Text(
                        'encostay',
                        style: TextStyle(
                          fontSize: bold20.fontSize,
                          fontWeight: bold20.fontWeight,
                          height: bold20.height,
                          color: brandBrown,
                        ),
                      ),
                      Text(
                        'Enjoy convenient stay',
                        style: TextStyle(
                          fontSize: medium13.fontSize,
                          fontWeight: medium14.fontWeight,
                          height: medium14.height,
                          color: brandBrown,
                        ),
                      ),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 95) +
                        EdgeInsets.only(bottom: 8),
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
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: <Widget>[
                    LoginForm(),
                    SignUpForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
