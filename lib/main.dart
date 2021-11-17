import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/blocs/booking_bloc.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/states/booking_state.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/ui/screens/add_card_screen.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/ui/screens/add_payment_screen.dart';
import 'package:encostay/features/guest/booking/presentation/ui/screens/apartment_details_screen.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/contact_support_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_home_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/blocs/host_listings_bloc.dart';
import 'package:encostay/features/host/leasing/presentation/ui/screens/contact_support_screen.dart';
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
import 'package:encostay/features/shared/password_change/presentation/logic_holders/bloc/change_password_bloc.dart';
import 'package:encostay/features/shared/password_change/presentation/ui/screens/change_password_screen.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/bloc/add_payment_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/ui/screens/set_password_screen.dart';
import 'package:encostay/features/shared/onboarding/presentation/ui/screens/splash_screen.dart';
import 'package:encostay/core/utilities/colors.dart';
// import 'package:encostay/core/navigation/router.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
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
      initialRoute: RouteNames.ROUTE_SPLASH,
      // onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => SplashScreen()),
      routes: {
        RouteNames.ROUTE_ADD_CARD: (context) => AddCardScreen(),
        RouteNames.ROUTE_ADD_PAYMENT: (context) => BlocProvider<AddPaymentBloc>(
              create: (context) => AddPaymentBloc(),
              child: AddPaymentScreen(),
            ),
        RouteNames.ROUTE_APARTMENT_DETAILS: (context) =>
            ApartmentDetailsScreen(),
        RouteNames.ROUTE_AUTH: (context) => MultiBlocProvider(
              providers: [
                BlocProvider<SignUpBloc>(
                  create: (context) => SignUpBloc(),
                ),
              ],
              child: AuthScreen(),
            ),
        RouteNames.ROUTE_BOOKING: (context) => BlocProvider<BookingBloc>(
              create: (context) => BookingBloc(
                DefaultBookingState(progressIndex: 0),
              ),
              child: BookingScreen(),
            ),
        RouteNames.ROUTE_CANCEL_BOOKING: (context) => CancelBookingScreen(),
        RouteNames.ROUTE_CANCELLATION: (context) => CancellationScreen(),
        RouteNames.ROUTE_CANCELLATION_SURVEY: (context) =>
            CancellationSurveyScreen(),
        RouteNames.ROUTE_CHANGE_PASSWORD: (context) =>
            BlocProvider<ChangePasswordBloc>(
              create: (context) => ChangePasswordBloc(),
              child: ChangePasswordScreen(),
            ),
        RouteNames.ROUTE_CONFIRMED: (context) => ConfirmedScreen(),
        RouteNames.ROUTE_CONTACT_SUPPORT: (context) =>
            BlocProvider<ContactSupportBloc>(
                create: (context) => ContactSupportBloc(),
                child: ContactSupportScreen()),
        RouteNames.ROUTE_FILTERS: (context) => FiltersScreen(),
        RouteNames.ROUTE_HOME: (context) => HomeScreen(),
        RouteNames.ROUTE_HOST_HOME: (context) => BlocProvider<HostHomeBloc>(
              create: (context) => HostHomeBloc(),
              child: HostHomeScreen(),
            ),
        RouteNames.ROUTE_HOST_LISTINGS: (context) =>
            BlocProvider<HostListingsBloc>(
              create: (cotntext) => HostListingsBloc(),
              child: HostListingsScreen(),
            ),
        RouteNames.ROUTE_ONBOARDING: (context) => OnboardingScreen(),
        RouteNames.ROUTE_OWNER: (context) => OwnerProfileScreen(),
        RouteNames.ROUTE_PREVIEW: (context) => PreviewScreen(),
        RouteNames.ROUTE_RECEIVING: (context) => ReceivingScreen(),
        RouteNames.ROUTE_SEARCH_RESULTS: (context) => SearchResultsScreen(),
        RouteNames.ROUTE_SET_PASSWORD: (context) => BlocProvider<SignUpBloc>(
              create: (context) => SignUpBloc(),
              child: SetPasswordScreen(),
            ),
        RouteNames.ROUTE_SPLASH: (context) => SplashScreen(),
      },
    );
  }
}
