import 'package:encostay/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

class UserCredentialEntity extends Equatable {
  final String userID;
  final AccountType accountType;

  UserCredentialEntity({
    required this.userID,
    required this.accountType,
  });

  @override
  List<Object?> get props => [];
}
