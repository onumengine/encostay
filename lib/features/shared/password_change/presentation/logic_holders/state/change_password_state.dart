import 'package:equatable/equatable.dart';

abstract class ChangePasswordState extends Equatable {
  @override
  List<Object?> get props => [];
}

abstract class ChangePasswordError extends Equatable {
  static const String message = "Error";
  @override
  List<Object?> get props => [];
}

class Default extends ChangePasswordState {}

class WrongPassword extends ChangePasswordError {
  static const String message = "The password you entered is incorrect";
}

class PasswordMismatch extends ChangePasswordError {
  static const String message = "The passwords do not match";
}

class Processing extends ChangePasswordState {}

class ChangedPassword extends ChangePasswordState {}
