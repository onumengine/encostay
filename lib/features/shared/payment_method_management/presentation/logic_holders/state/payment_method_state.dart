import 'package:equatable/equatable.dart';

abstract class PaymentMethodState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Default extends PaymentMethodState {}
