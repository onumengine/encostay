import 'package:equatable/equatable.dart';

abstract class HostHomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Default extends HostHomeState {
  final int tabIndex;

  Default({required this.tabIndex});

  @override
  List<Object?> get props => [tabIndex];
}
