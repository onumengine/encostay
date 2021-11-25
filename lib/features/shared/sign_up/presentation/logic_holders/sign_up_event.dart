import 'package:encostay/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AppendUserData extends SignUpEvent {
  final String firstName, lastname, email;
  final AccountType accountType;
  final DateTime dateOfBirth;

  AppendUserData({
    required this.firstName,
    required this.lastname,
    required this.email,
    required this.accountType,
    required this.dateOfBirth,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastname,
        email,
        accountType,
        dateOfBirth,
      ];
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

class AppendDateOfBirth extends SignUpEvent {
  final DateTime dateOfBirth;

  AppendDateOfBirth(this.dateOfBirth);

  @override
  List<Object?> get props => [dateOfBirth];
}

class SelectAccountType extends SignUpEvent {
  final AccountType accountType;

  SelectAccountType(this.accountType);

  @override
  List<Object?> get props => [accountType];
}
