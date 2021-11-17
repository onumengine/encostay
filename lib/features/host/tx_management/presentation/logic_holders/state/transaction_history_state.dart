import 'package:equatable/equatable.dart';

abstract class TransactionState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Loading extends TransactionState {}

class NoTransactions extends TransactionState {}

class Loaded extends TransactionState {}
