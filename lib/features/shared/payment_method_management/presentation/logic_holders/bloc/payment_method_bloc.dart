import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/event/payment_method_event.dart';
import 'package:encostay/features/shared/payment_method_management/presentation/logic_holders/state/payment_method_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  PaymentMethodBloc() : super(Default());

  @override
  Stream<PaymentMethodState> mapEventToState(PaymentMethodEvent event) async* {
    yield Default();
  }
}
