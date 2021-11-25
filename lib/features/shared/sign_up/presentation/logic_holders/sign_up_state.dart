import 'package:encostay/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Unregistered extends SignUpState {
  final AccountType accountType = AccountType.guest;
  final DateTime dateOfBirth = DateTime.now();

  @override
  List<Object?> get props => [
        accountType,
        dateOfBirth,
      ];
}

class SigningUp extends SignUpState {
  final AccountType accountType;
  final DateTime dateOfBirth;

  SigningUp({
    required this.accountType,
    required this.dateOfBirth,
  });

  @override
  List<Object?> get props => [
        accountType,
        dateOfBirth,
      ];
}

class ValidatingInput extends SignUpState {}

class Validated extends SignUpState {
  final AccountType accountType;

  Validated({required this.accountType});

  @override
  List<Object?> get props => [];
}

class DetectedInvalidInput extends SignUpState {}

class SignUpFailed extends SignUpState {
  final String failureMessage;

  SignUpFailed({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}

class SignUpComplete extends SignUpState {}
