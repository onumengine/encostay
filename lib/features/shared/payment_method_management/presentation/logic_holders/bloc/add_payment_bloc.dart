import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/event/add_payment_event.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/state/add_payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentBloc extends Bloc<AddPaymentEvent, AddPaymentState> {
  AddPaymentBloc() : super(Default());

  @override
  Stream<AddPaymentState> mapEventToState(AddPaymentEvent event) async* {
    yield Default();
  }
}
