import 'package:equatable/equatable.dart';

abstract class BookingStatusState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DummyState extends BookingStatusState {}

class DefaultState extends BookingStatusState {
  int progressIndex = 0;

  DefaultState({required this.progressIndex});

  @override
  List<Object?> get props => [this.progressIndex];
}
