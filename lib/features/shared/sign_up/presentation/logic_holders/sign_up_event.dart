import 'package:encostay/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SubmitSignUpForm extends SignUpEvent {
  final String firstName,
      lastname,
      email,
      firstPasswordEntry,
      secondPasswordEntry;
  final AccountType accountType;
  final DateTime dateOfBirth;

  SubmitSignUpForm({
    required this.firstName,
    required this.lastname,
    required this.email,
    required this.accountType,
    required this.dateOfBirth,
    required this.firstPasswordEntry,
    required this.secondPasswordEntry,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastname,
        email,
        accountType,
        dateOfBirth,
        firstPasswordEntry,
        secondPasswordEntry,
      ];
}

class SubmitPassword extends SignUpEvent {
  final String firstPasswordEntry, secondPasswordEntry;

  SubmitPassword({
    required this.firstPasswordEntry,
    required this.secondPasswordEntry,
  });

  @override
  List<Object?> get props => [
        firstPasswordEntry,
        secondPasswordEntry,
      ];
}

class SelectDateOfBirth extends SignUpEvent {
  final DateTime dateOfBirth;

  SelectDateOfBirth(this.dateOfBirth);

  @override
  List<Object?> get props => [dateOfBirth];
}

class SelectAccountType extends SignUpEvent {
  final AccountType accountType;

  SelectAccountType(this.accountType);

  @override
  List<Object?> get props => [accountType];
}
