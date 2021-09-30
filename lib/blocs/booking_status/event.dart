import 'package:equatable/equatable.dart';

abstract class BookingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TabSelectionEvent extends BookingEvent {
  int? selectedTabIndex;

  TabSelectionEvent({required this.selectedTabIndex})
      : assert(selectedTabIndex! < 5);

  @override
  List<Object?> get props => [this.selectedTabIndex];
}
