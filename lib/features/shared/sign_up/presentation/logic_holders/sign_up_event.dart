import 'package:encostay/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppendAccountType extends SignUpEvent {
  final AccountType accountType;

  AppendAccountType(this.accountType);

  @override
  List<Object?> get props => [accountType];
}

class AppendDateOfBirth extends SignUpEvent {
  final DateTime dateOfBirth;

  AppendDateOfBirth(this.dateOfBirth);

  @override
  List<Object?> get props => [dateOfBirth];
}

class AppendPassword extends SignUpEvent {
  final String firstPasswordEntry, secondPasswordEntry;

  AppendPassword({
    required this.firstPasswordEntry,
    required this.secondPasswordEntry,
  });

  @override
  List<Object?> get props => [
        firstPasswordEntry,
        secondPasswordEntry,
      ];
}

class AppendUserData extends SignUpEvent {
  final String firstName, lastname, email;

  AppendUserData({
    required this.firstName,
    required this.lastname,
    required this.email,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastname,
        email,
      ];
}

class SubmitForm extends SignUpEvent {}
