import 'package:encostay/features/host/leasing/presentation/logic_holders/events/host_home_component_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/host_home_component_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HostHomeComponentBloc
    extends Bloc<HostHomeComponentEvent, HostHomeComponentState> {
  HostHomeComponentBloc() : super(Empty());

  @override
  Stream<HostHomeComponentState> mapEventToState(
      HostHomeComponentEvent event) async* {
    yield Empty();
  }
}
