import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DefaultSignInState extends SignInState {}

class SigningIn extends SignInState {}

class SignInComplete extends SignInState {}

class SignInFailed extends SignInState {}
