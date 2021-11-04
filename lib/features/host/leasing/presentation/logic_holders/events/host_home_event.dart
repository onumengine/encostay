import 'package:equatable/equatable.dart';

abstract class HostHomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChangeTab extends HostHomeEvent {
  final int tabIndex;

  ChangeTab({required this.tabIndex});

  @override
  List<Object?> get props => [tabIndex];
}
