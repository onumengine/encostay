import 'package:equatable/equatable.dart';

abstract class PasswordChangeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ValidateOriginalPassword extends PasswordChangeEvent {
  final String password;

  ValidateOriginalPassword({required this.password});

  @override
  List<Object?> get props => [password];
}

class ConfirmNewPasswordsMatch extends PasswordChangeEvent {
  final String newPassword, confirmPassword;

  ConfirmNewPasswordsMatch(
      {required this.newPassword, required this.confirmPassword});

  @override
  List<Object?> get props => [
        newPassword,
        confirmPassword,
      ];
}

class SubmitnewPassword extends PasswordChangeEvent {
  final String newPassword;

  SubmitnewPassword({required this.newPassword});

  @override
  List<Object?> get props => [newPassword];
}
