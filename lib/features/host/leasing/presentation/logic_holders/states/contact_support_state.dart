import 'package:equatable/equatable.dart';

abstract class ContactSupportState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Loading extends ContactSupportState {}

class EmptyChat extends ContactSupportState {}

class DefaultDebugChat extends ContactSupportState {
  final String customerAgentName = "Helena Reynolds";
  final List<String> messages = [
    'Hello I\'m looking forward to having you stay in my home. Please let me know when you expect to arrive. \n\nRobert.',
    'On Sunday the 10th between 3:15 and 5:00pm',
  ];

  @override
  List<Object?> get props => [messages];
}

class ActivelyChatting extends ContactSupportState {
  final List<String> messages;

  ActivelyChatting({required this.messages});

  @override
  List<Object?> get props => [messages];
}
