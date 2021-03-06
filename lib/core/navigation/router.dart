/*
import 'package:encostay/features/guest/booking/presentation/logic_holders/blocs/booking_bloc.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/states/booking_state.dart';
import 'package:encostay/features/guest/payment_integration/presentation/ui/screens/add_card_screen.dart';
import 'package:encostay/features/guest/payment_integration/presentation/ui/screens/add_payment_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/apartment_details_screen.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_home_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_listings_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/ui/screens/home_screen.dart';
import 'package:encostay/features/host/leasing/presentation/ui/screens/host_listings_screen.dart';
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
import 'package:encostay/features/shared/sign_up/presentation/ui/screens/set_password_screen.dart';
import 'package:encostay/features/shared/onboarding/presentation/ui/screens/splash_screen.dart';
import 'package:encostay/core/utilities/constants.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
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
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<SignUpBloc>(
                create: (context) => SignUpBloc(),
              ),
              BlocProvider<SignInBloc>(
                create: (context) => SignInBloc(),
              ),
            ],
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
      case ROUTE_HOST_HOME:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<HostHomeBloc>(
            create: (context) => HostHomeBloc(),
            child: HostHomeScreen(),
          ),
        );
      case ROUTE_HOST_LISTINGS:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<HostListingsBloc>(
            create: (cotntext) => HostListingsBloc(),
            child: HostListingsScreen(),
          ),
        );
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
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SignUpBloc>(
            create: (context) => SignUpBloc(),
            child: SetPasswordScreen(),
          ),
        );
      case ROUTE_SPLASH:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}
*/