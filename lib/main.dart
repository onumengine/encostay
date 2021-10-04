import 'package:encostay/ui/screens/splash_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:encostay/utilities/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: brandBackground,
      ),
      initialRoute: ROUTE_SPLASH,
      onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => SplashScreen()),
    );
  }
}
