import 'package:equatable/equatable.dart';

abstract class PasswordChangeState extends Equatable {
  @override
  List<Object?> get props => [];
}

abstract class PasswordChangeError extends Equatable {
  static const String message = "Error";
  @override
  List<Object?> get props => [];
}

class Default extends PasswordChangeState {}

class WrongPassword extends PasswordChangeError {
  static const String message = "The password you entered is incorrect";
}

class PasswordMismatch extends PasswordChangeError {
  static const String message = "The passwords do not match";
}

class Processing extends PasswordChangeState {}

class ChangedPassword extends PasswordChangeState {}
