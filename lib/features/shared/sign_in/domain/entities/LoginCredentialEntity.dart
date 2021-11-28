import 'package:equatable/equatable.dart';

class LoginCredentialEntity extends Equatable {
  final String userID;

  LoginCredentialEntity({required this.userID});

  @override
  List<Object?> get props => [userID];
}
