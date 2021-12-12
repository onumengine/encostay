import 'package:country_code_picker/country_localizations.dart';
import 'package:encostay/core/utilities/color_palette.dart';
import 'package:encostay/core/utilities/route_names.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/blocs/booking_bloc.dart';
import 'package:encostay/features/guest/booking/presentation/logic_holders/states/booking_state.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/blocs/onboarding_bloc.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/blocs/splash_bloc.dart';
import 'package:encostay/features/shared/profile_editing/presentation/ui/screens/edit_profile_screen.dart';
import 'package:encostay/features/host/tx_management/presentation/logic_holders/bloc/transaction_bloc.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/screens/transaction_history_screen.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/screens/transaction_summary_screen.dart';
import 'package:encostay/features/host/tx_management/presentation/ui/screens/withdraw_funds_screen.dart';
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
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_bloc.dart';
import 'package:encostay/features/shared/sign_up/presentation/ui/screens/set_password_screen.dart';
import 'package:encostay/features/shared/onboarding/presentation/ui/screens/splash_screen.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
import 'package:encostay/injection_container.dart' as injector;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("af"),
        const Locale("am"),
        const Locale("ar"),
        const Locale("az"),
        const Locale("be"),
        const Locale("bg"),
        const Locale("bn"),
        const Locale("bs"),
        const Locale("ca"),
        const Locale("cs"),
        const Locale("da"),
        const Locale("de"),
        const Locale("el"),
        const Locale('en', 'US'),
        const Locale("es"),
        const Locale("et"),
        const Locale("fa"),
        const Locale("fi"),
        const Locale("fr"),
        const Locale("gl"),
        const Locale("ha"),
        const Locale("he"),
        const Locale("hi"),
        const Locale("hr"),
        const Locale("hu"),
        const Locale("hy"),
        const Locale("id"),
        const Locale("is"),
        const Locale("it"),
        const Locale("ja"),
        const Locale("ka"),
        const Locale("kk"),
        const Locale("km"),
        const Locale("ko"),
        const Locale("ku"),
        const Locale("ky"),
        const Locale("lt"),
        const Locale("lv"),
        const Locale("mk"),
        const Locale("ml"),
        const Locale("mn"),
        const Locale("ms"),
        const Locale("nb"),
        const Locale("nl"),
        const Locale("nn"),
        const Locale("no"),
        const Locale("pl"),
        const Locale("ps"),
        const Locale("pt"),
        const Locale("ro"),
        const Locale("ru"),
        const Locale("sd"),
        const Locale("sk"),
        const Locale("sl"),
        const Locale("so"),
        const Locale("sq"),
        const Locale("sr"),
        const Locale("sv"),
        const Locale("ta"),
        const Locale("tg"),
        const Locale("th"),
        const Locale("tk"),
        const Locale("tr"),
        const Locale("tt"),
        const Locale("uk"),
        const Locale("ug"),
        const Locale("ur"),
        const Locale("uz"),
        const Locale("vi"),
        const Locale("zh"),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: ColorPalette.brandBackground,
      ),
      initialRoute: RouteNames.SPLASH,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => SplashScreen(),
      ),
      routes: {
        RouteNames.ADD_CARD: (context) => AddCardScreen(),
        RouteNames.ADD_PAYMENT: (context) => BlocProvider<AddPaymentBloc>(
              create: (context) => AddPaymentBloc(),
              child: AddPaymentScreen(),
            ),
        RouteNames.APARTMENT_DETAILS: (context) => ApartmentDetailsScreen(),
        RouteNames.AUTH: (context) => MultiBlocProvider(
              providers: [
                BlocProvider<SignUpBloc>(
                  create: (_) => injector.serviceLocator<SignUpBloc>(),
                ),
                BlocProvider<SignInBloc>(
                  create: (_) => injector.serviceLocator<SignInBloc>(),
                ),
              ],
              child: AuthScreen(),
            ),
        RouteNames.BOOKING: (context) => BlocProvider<BookingBloc>(
              create: (context) => BookingBloc(
                DefaultBookingState(progressIndex: 0),
              ),
              child: BookingScreen(),
            ),
        RouteNames.CANCEL_BOOKING: (context) => CancelBookingScreen(),
        RouteNames.CANCELLATION: (context) => CancellationScreen(),
        RouteNames.CANCELLATION_SURVEY: (context) => CancellationSurveyScreen(),
        RouteNames.CHANGE_PASSWORD: (context) =>
            BlocProvider<ChangePasswordBloc>(
              create: (context) => ChangePasswordBloc(),
              child: ChangePasswordScreen(),
            ),
        RouteNames.CONFIRMED: (context) => ConfirmedScreen(),
        RouteNames.CONTACT_SUPPORT: (context) =>
            BlocProvider<ContactSupportBloc>(
                create: (context) => ContactSupportBloc(),
                child: ContactSupportScreen()),
        RouteNames.FILTERS: (context) => FiltersScreen(),
        RouteNames.HOME: (context) => HomeScreen(),
        RouteNames.HOST_HOME: (context) => BlocProvider<HostHomeBloc>(
              create: (context) => HostHomeBloc(),
              child: HostHomeScreen(),
            ),
        RouteNames.HOST_LISTINGS: (context) => BlocProvider<HostListingsBloc>(
              create: (cotntext) => HostListingsBloc(),
              child: HostListingsScreen(),
            ),
        RouteNames.EDIT_PROFILE: (context) => EditProfileScreen(),
        RouteNames.ONBOARDING: (context) => BlocProvider(
              create: (_) => injector.serviceLocator<OnboardingBloc>(),
              child: OnboardingScreen(),
            ),
        RouteNames.OWNER: (context) => OwnerProfileScreen(),
        RouteNames.PREVIEW: (context) => PreviewScreen(),
        RouteNames.RECEIVING: (context) => ReceivingScreen(),
        RouteNames.SEARCH_RESULTS: (context) => SearchResultsScreen(),
        RouteNames.SET_PASSWORD: (context) => BlocProvider(
              create: (_) => injector.serviceLocator<SignUpBloc>(),
              child: SetPasswordScreen(),
            ),
        RouteNames.SPLASH: (context) => BlocProvider<SplashBloc>(
              create: (_) => injector.serviceLocator<SplashBloc>(),
              child: SplashScreen(),
            ),
        RouteNames.TRANSACTION_HISTORY: (context) => TransactionHistoryScreen(),
        RouteNames.TRANSACTION_SUMMARY: (context) =>
            BlocProvider<TransactionsBloc>(
              create: (context) => TransactionsBloc(),
              child: TransactionSummaryScreen(),
            ),
        RouteNames.WITHDRAW_FUNDS: (context) => WithdrawFundsScreen(),
      },
    );
  }
}
