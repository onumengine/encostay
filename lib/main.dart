import 'package:encostay/blocs/auth/bloc.dart';
import 'package:encostay/blocs/auth/state.dart';
import 'package:encostay/blocs/booking_status/bloc.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/ui/screens/add_card_screen.dart';
import 'package:encostay/ui/screens/add_payment_screen.dart';
import 'package:encostay/ui/screens/apartment_details_screen.dart';
import 'package:encostay/ui/screens/auth_screen.dart';
import 'package:encostay/ui/screens/booking_screen.dart';
import 'package:encostay/ui/screens/cancel_booking.dart';
import 'package:encostay/ui/screens/cancellation_screen.dart';
import 'package:encostay/ui/screens/cancellation_survey_screen.dart';
import 'package:encostay/ui/screens/confirmed_screen.dart';
import 'package:encostay/ui/screens/filters_screen.dart';
import 'package:encostay/ui/screens/home_screen.dart';
import 'package:encostay/ui/screens/onboarding_screen.dart';
import 'package:encostay/ui/screens/owner_profile_screen.dart';
import 'package:encostay/ui/screens/preview_screen.dart';
import 'package:encostay/ui/screens/receiving_screen.dart';
import 'package:encostay/ui/screens/search_results_screen.dart';
import 'package:encostay/ui/screens/set_password_screen.dart';
import 'package:encostay/ui/screens/splash_screen.dart';
import 'package:encostay/utilities/colors.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:encostay/utilities/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      routes: {
        ROUTE_ADD_CARD: (context) => AddCardScreen(),
        ROUTE_ADD_PAYMENT: (context) => AddPaymentScreen(),
        ROUTE_APARTMENT_DETAILS: (context) => ApartmentDetailsScreen(),
        ROUTE_AUTH: (context) => BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                DefaultAuthState(),
              ),
              child: AuthScreen(),
            ),
        ROUTE_BOOKING: (context) => BlocProvider<BookingBloc>(
              create: (context) => BookingBloc(
                DefaultBookingState(progressIndex: 0),
              ),
              child: BookingScreen(),
            ),
        ROUTE_CANCEL_BOOKING: (context) => CancelBookingScreen(),
        ROUTE_CANCELLATION: (context) => CancellationScreen(),
        ROUTE_CANCELLATION_SURVEY: (context) => CancellationSurveyScreen(),
        ROUTE_CONFIRMED: (context) => ConfirmedScreen(),
        ROUTE_FILTERS: (context) => FiltersScreen(),
        ROUTE_HOME: (context) => HomeScreen(),
        ROUTE_ONBOARDING: (context) => OnboardingScreen(),
        ROUTE_OWNER: (context) => OwnerProfileScreen(),
        ROUTE_PREVIEW: (context) => PreviewScreen(),
        ROUTE_RECEIVING: (context) => ReceivingScreen(),
        ROUTE_SEARCH_RESULTS: (context) => SearchResultsScreen(),
        ROUTE_SET_PASSWORD: (context) => SetPasswordScreen(),
        ROUTE_SPLASH: (context) => SplashScreen(),
      },
    );
  }
}
