import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Unauthenticated extends AuthState {}

class AccountCreated extends AuthState {}

class Authenticated extends AuthState {}
