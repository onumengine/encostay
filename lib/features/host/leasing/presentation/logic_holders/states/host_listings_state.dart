import 'package:equatable/equatable.dart';

abstract class HostListingsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Loaded extends HostListingsState {}
