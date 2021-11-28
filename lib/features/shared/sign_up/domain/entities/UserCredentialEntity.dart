import 'package:equatable/equatable.dart';

class UserCredentialEntity extends Equatable {
  final String userID;
  final String accountType;

  UserCredentialEntity({
    required this.userID,
    required this.accountType,
  });

  @override
  List<Object?> get props => [];
}
