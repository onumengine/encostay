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
    Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: brandBackground,
                elevation: 0,
                expandedHeight: /*(screenSize.height / 3.5)*/ 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: (screenSize.height / 23.2)),
                      Image(
                        image: AssetImage('lib/assets/images/icon.png'),
                        height: 60,
                        width: 50,
                      ),
                      ListTile(
                        title: Center(
                          child: Text(
                            'encostay',
                            style: TextStyle(
                              fontSize: bold20.fontSize,
                              fontWeight: bold20.fontWeight,
                              height: bold20.height,
                              color: brandBrown,
                            ),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            'Enjoy convenient stay',
                            style: TextStyle(
                              fontSize: medium13.fontSize,
                              fontWeight: medium14.fontWeight,
                              height: medium14.height,
                              color: brandBrown,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: (screenSize.height / 19.8)),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(
                      kToolbarHeight + (screenSize.height / 19.8)),
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
