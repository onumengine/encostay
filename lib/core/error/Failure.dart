import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignupFailure extends Failure {
  final String message;

  SignupFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
