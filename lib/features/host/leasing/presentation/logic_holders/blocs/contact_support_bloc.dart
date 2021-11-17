import 'package:encostay/features/host/leasing/presentation/logic_holders/events/contact_support_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/contact_support_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactSupportBloc
    extends Bloc<ContactSupportEvent, ContactSupportState> {
  final List<String> _messages = [];
  ContactSupportBloc() : super(DefaultDebugChat());

  @override
  Stream<ContactSupportState> mapEventToState(
      ContactSupportEvent event) async* {
    if (event is SendMessage) {
      addMessageToChat(event.message);
      yield ActivelyChatting(messages: _messages);
    } else {
      yield EmptyChat();
    }
  }

  void addMessageToChat(String message) {
    _messages.add(message);
  }
}
