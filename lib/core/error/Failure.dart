import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class ConnectionFailure extends Failure {
  final String? message;

  ConnectionFailure({
    this.message = 'The device is not connected to the internet',
  });

  @override
  List<Object?> get props => [message];
}

class KeyFetchingFailure extends Failure {
  final String? message;

  KeyFetchingFailure({
    this.message = 'There was an error fetching the value from the store',
  });

  @override
  List<Object?> get props => [message];
}

class KeyValueStoringFailure extends Failure {
  final String? message;

  KeyValueStoringFailure({
    this.message = 'There was an error fetching the value from the store',
  });

  @override
  List<Object?> get props => [message];
}

class OnboardedStatusActivationFailure extends Failure {
  final String? message;

  OnboardedStatusActivationFailure({
    this.message = 'There was an error activating onboarded status',
  });

  @override
  List<Object?> get props => [message];
}

class OnboardingStatusCheckFailure extends Failure {
  final String? message;

  OnboardingStatusCheckFailure({
    this.message = 'There was an error checking the app launch status',
  });

  @override
  List<Object?> get props => [message];
}

class LoginFailure extends Failure {
  final String? message;

  LoginFailure({
    this.message = 'There has been a login error',
  });

  @override
  List<Object?> get props => [message];
}

class SignupFailure extends Failure {
  final String? message;

  SignupFailure({
    this.message = 'There has been a sign up error',
  });

  @override
  List<Object?> get props => [message];
}
