import 'package:encostay/core/network/NetworkInfo.dart';
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

final GetIt serviceLocator = GetIt.instance;

init() {
  initFeatures();
  initCore();
  initExternal();
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
}

initCore() {
  serviceLocator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      connectionChecker: serviceLocator(),
    ),
  );
}

initExternal() {
  serviceLocator.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker(),
  );
  serviceLocator.registerFactory<Client>(() => Client());
}
