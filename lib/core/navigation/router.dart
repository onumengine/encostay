import 'package:encostay/blocs/booking_status/bloc.dart';
import 'package:encostay/blocs/booking_status/state.dart';
import 'package:encostay/features/guest/payment_integration/presentation/ui/screens/add_card_screen.dart';
import 'package:encostay/features/guest/payment_integration/presentation/ui/screens/add_payment_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/apartment_details_screen.dart';
import 'package:encostay/features/shared/authentication/presentation/logic_holders/blocs/auth_bloc.dart';
import 'package:encostay/features/shared/authentication/presentation/logic_holders/states/auth_state.dart';
import 'package:encostay/features/shared/authentication/presentation/ui/screens/auth_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/booking_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/cancel_booking.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/cancellation_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/cancellation_survey_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/confirmed_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/filters_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/home_screen.dart';
import 'package:encostay/features/shared/onboarding/presentation/ui/screens/onboarding_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/owner_profile_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/preview_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/receiving_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/search_results_screen.dart';
import 'package:encostay/features/shared/authentication/presentation/ui/screens/set_password_screen.dart';
import 'package:encostay/features/shared/onboarding/presentation/ui/screens/splash_screen.dart';
import 'package:encostay/core/utilities/constants.dart';
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
              Unauthenticated(),
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
      case ROUTE_CANCEL_BOOKING:
        return MaterialPageRoute(builder: (context) => CancelBookingScreen());
      case ROUTE_CANCELLATION:
        return MaterialPageRoute(builder: (context) => CancellationScreen());
      case ROUTE_CANCELLATION_SURVEY:
        return MaterialPageRoute(
            builder: (context) => CancellationSurveyScreen());
      case ROUTE_CONFIRMED:
        return MaterialPageRoute(builder: (context) => ConfirmedScreen());
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
      case ROUTE_RECEIVING:
        return MaterialPageRoute(builder: (context) => ReceivingScreen());
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
