import 'package:encostay/features/host/leasing/presentation/logic_holders/events/contact_support_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/contact_support_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactSupportBloc
    extends Bloc<ContactSupportEvent, ContactSupportState> {
  ContactSupportBloc() : super(EmptyChat());

  @override
  Stream<ContactSupportState> mapEventToState(
      ContactSupportEvent event) async* {
    yield EmptyChat();
  }
}
