import 'package:encostay/features/host/tx_management/presentation/logic_holders/event/transaction_history_event.dart';
import 'package:encostay/features/host/tx_management/presentation/logic_holders/state/transaction_history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionsBloc() : super(Loaded());

  @override
  Stream<TransactionState> mapEventToState(TransactionEvent event) async* {
    yield Loaded();
  }
}
