import 'package:encostay/features/host/leasing/presentation/logic_holders/events/host_home_event.dart';
import 'package:encostay/features/host/leasing/presentation/logic_holders/states/host_home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HostHomeBloc extends Bloc<HostHomeEvent, HostHomeState> {
  HostHomeBloc() : super(Default(tabIndex: 0));

  @override
  Stream<HostHomeState> mapEventToState(HostHomeEvent event) async* {
    if (event is ChangeTab) {
      yield Default(tabIndex: event.tabIndex);
    }
  }
}
