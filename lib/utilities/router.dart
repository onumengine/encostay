import 'package:encostay/blocs/auth/bloc.dart';
import 'package:encostay/blocs/auth/state.dart';
import 'package:encostay/blocs/booking_status/bloc.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/ui/screens/add_card_screen.dart';
import 'package:encostay/ui/screens/add_payment_screen.dart';
import 'package:encostay/ui/screens/apartment_details_screen.dart';
import 'package:encostay/ui/screens/auth_screen.dart';
import 'package:encostay/ui/screens/booking_screen.dart';
import 'package:encostay/ui/screens/cancellation_screen.dart';
import 'package:encostay/ui/screens/filters_screen.dart';
import 'package:encostay/ui/screens/home_screen.dart';
import 'package:encostay/ui/screens/onboarding_screen.dart';
import 'package:encostay/ui/screens/owner_profile_screen.dart';
import 'package:encostay/ui/screens/preview_screen.dart';
import 'package:encostay/ui/screens/search_results_screen.dart';
import 'package:encostay/ui/screens/set_password_screen.dart';
import 'package:encostay/ui/screens/splash_screen.dart';
import 'package:encostay/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    return _getRouteFromName(routeSettings.name!);
  }

  Route<dynamic> _getRouteFromName(String routeName) {
    switch (routeName) {
      case ROUTE_ADD_CARD:
        return MaterialPageRoute(builder: (context) => AddCardScreen());
      case ROUTE_ADD_PAYMENT:
        return MaterialPageRoute(builder: (context) => AddPaymentScreen());
      case ROUTE_APARTMENT_DETAILS:
        return MaterialPageRoute(
            builder: (context) => ApartmentDetailsScreen());
      case ROUTE_AUTH:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              DefaultAuthState(),
            ),
            child: AuthScreen(),
          ),
        );
      case ROUTE_BOOKING:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BookingBloc>(
            create: (context) => BookingBloc(
              DefaultBookingState(progressIndex: 0),
            ),
            child: BookingScreen(),
          ),
        );
      case ROUTE_CANCELLATION:
        return MaterialPageRoute(builder: (context) => CancellationScreen());
      case ROUTE_FILTERS:
        return MaterialPageRoute(builder: (context) => FiltersScreen());
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case ROUTE_ONBOARDING:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case ROUTE_OWNER:
        return MaterialPageRoute(builder: (context) => OwnerProfileScreen());
      case ROUTE_PREVIEW:
        return MaterialPageRoute(builder: (context) => PreviewScreen());
      case ROUTE_SEARCH_RESULTS:
        return MaterialPageRoute(builder: (context) => SearchResultsScreen());
      case ROUTE_SET_PASSWORD:
        return MaterialPageRoute(builder: (context) => SetPasswordScreen());
      case ROUTE_SPLASH:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}
