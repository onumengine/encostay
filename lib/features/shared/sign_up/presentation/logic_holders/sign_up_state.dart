import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Unregistered extends SignUpState {
  final String accountType = 'GUEST';
  final String dateOfBirth = DateTime.now().toString().split(' ').elementAt(0);

  @override
  List<Object?> get props => [
        accountType,
        dateOfBirth,
      ];
}

class SigningUp extends SignUpState {
  late final String? accountType;
  late String? dateOfBirth;

  SigningUp({
    required Map<String, dynamic> data,
  }) {
    this.accountType = data['accountType'] ?? 'GUEST';
    this.dateOfBirth = data['dateOfBirth'] ??
        DateTime.now().toString().split(' ').elementAt(0);
  }

  @override
  List<Object?> get props => [
        accountType,
        dateOfBirth,
      ];
}

class ValidatingInput extends SignUpState {}

// class Validated extends SignUpState {
//   final AccountType accountType;

//   Validated({required this.accountType});

//   @override
//   List<Object?> get props => [];
// }

class DetectedInvalidInput extends SignUpState {}

class SignUpFailed extends SignUpState {
  final String failureMessage;

  SignUpFailed({required this.failureMessage});

  @override
  List<Object?> get props => [failureMessage];
}

class SignUpComplete extends SignUpState {
  final String accountType;

  SignUpComplete({required this.accountType});

  @override
  List<Object?> get props => [accountType];
}
