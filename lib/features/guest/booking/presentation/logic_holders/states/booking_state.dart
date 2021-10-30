import 'package:equatable/equatable.dart';

abstract class BookingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DummyBookingState extends BookingState {}

class DefaultBookingState extends BookingState {
  int progressIndex = 0;

  DefaultBookingState({required this.progressIndex});

  @override
  List<Object?> get props => [this.progressIndex];
}
