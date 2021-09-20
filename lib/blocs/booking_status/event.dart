import 'package:equatable/equatable.dart';

abstract class BookingStatusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TabSelectionEvent extends BookingStatusEvent {
  int? selectedTab;

  TabSelectionEvent({required this.selectedTab});

  @override
  List<Object?> get props => [this.selectedTab];
}
