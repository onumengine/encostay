import 'package:equatable/equatable.dart';

abstract class ContactSupportState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingMessages extends ContactSupportState {}

class EmptyChat extends ContactSupportState {}
