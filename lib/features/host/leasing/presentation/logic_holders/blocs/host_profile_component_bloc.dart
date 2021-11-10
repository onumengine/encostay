import 'package:encostay/features/host/leasing/presentation/logic_holders/events/host_profile_component_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/host_profile_component_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HostProfileComponentBloc
    extends Bloc<HostProfileComponentEvent, HostProfileComponentState> {
  HostProfileComponentBloc() : super(Profile());

  @override
  Stream<HostProfileComponentState> mapEventToState(
      HostProfileComponentEvent event) async* {
    yield Profile();
  }
}
