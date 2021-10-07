import 'package:encostay/blocs/cancellation/event.dart';
import 'package:encostay/blocs/cancellation/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CancellationBloc extends Bloc<CancellationEvent, CancellationState> {
  CancellationBloc(CancellationState initialState) : super(initialState);

  @override
  Stream<CancellationState> mapEventToState(CancellationEvent event) async* {
    throw UnimplementedError();
  }
}
