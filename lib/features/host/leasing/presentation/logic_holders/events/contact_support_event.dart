import 'package:equatable/equatable.dart';

abstract class ContactSupportEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SendMessage extends ContactSupportEvent {
  final String message;

  SendMessage({required this.message});

  @override
  List<Object?> get props => [message];
}
