import 'package:encostay/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SelectAccountType extends AuthEvent {
  final AccountType accountType;

  SelectAccountType({required this.accountType});

  @override
  List<Object?> get props => [accountType];
}
