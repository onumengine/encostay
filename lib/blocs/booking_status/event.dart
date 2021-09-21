import 'package:equatable/equatable.dart';

abstract class BookingStatusEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TabSelectionEvent extends BookingStatusEvent {
  int? selectedTabIndex;

  TabSelectionEvent({required this.selectedTabIndex})
      : assert(selectedTabIndex! < 5);

  @override
  List<Object?> get props => [this.selectedTabIndex];
}
