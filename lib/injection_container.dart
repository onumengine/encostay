import 'package:encostay/core/network/NetworkInfo.dart';
import 'package:encostay/features/shared/onboarding/data/data_sources/launch_data_source.dart';
import 'package:encostay/features/shared/onboarding/data/repositories/launch_status_repo_impl.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/launch_status_repo.dart';
import 'package:encostay/features/shared/onboarding/domain/use_cases/check_first_launch.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/bloc.dart';
import 'package:encostay/features/shared/sign_in/data/data_sources/LoginDataSource.dart';
import 'package:encostay/features/shared/sign_in/data/repositories/EmailLoginRepoImpl.dart';
import 'package:encostay/features/shared/sign_in/domain/repositories/EmailLoginRepo.dart';
import 'package:encostay/features/shared/sign_in/domain/use_cases/LoginWiithEmail.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_bloc.dart';
import 'package:encostay/features/shared/sign_up/data/data_sources/RemoteDataSource.dart';
import 'package:encostay/features/shared/sign_up/data/repositories/SubmitSignupFormRepoImpl.dart';
import 'package:encostay/features/shared/sign_up/domain/repositories/SubmitSignupFormRepo.dart';
import 'package:encostay/features/shared/sign_up/domain/use_cases/SubmitSignupForm.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt serviceLocator = GetIt.instance;

init() async {
  initCore();
  await initExternal();
  initFeatures();
}

initCore() {
  serviceLocator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      connectionChecker: serviceLocator(),
    ),
  );
}

initExternal() async {
  serviceLocator.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker(),
  );
  serviceLocator.registerLazySingleton<Client>(
    () => Client(),
  );
  final SharedPreferences? prefs = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton<SharedPreferences>(
    () => prefs!,
  );
}

initFeatures() {
  serviceLocator.registerLazySingleton<SignUpBloc>(
    () => SignUpBloc(
      submitSignupForm: serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<SignInBloc>(
    () => SignInBloc(
      loginWithEmail: serviceLocator(),
    ),
  );
  serviceLocator.registerFactory<SplashBloc>(
    () => SplashBloc(
      checkFirstLaunch: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<SubmitSignupForm>(
    () => SubmitSignupForm(
      repository: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<LoginWithEmail>(
    () => LoginWithEmail(
      repository: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<CheckFirstLaunch>(
    () => CheckFirstLaunch(
      repository: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<SubmitSignupFormRepo>(
    () => SubmitSignupFormRepoImpl(
      remoteDataSource: serviceLocator(),
      connectionChecker: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<EmailLoginRepo>(
    () => EmailLoginRepoImpl(
      dataSource: serviceLocator(),
      networkInfo: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<LaunchStatusRepo>(
    () => LaunchStatusRepoImpl(
      dataSource: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      client: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<LoginDataSource>(
    () => LoginDataSourceImpl(
      client: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<LaunchDataSource>(
    () => LaunchDataSourceImpl(
      preferences: serviceLocator(),
    ),
  );
}
