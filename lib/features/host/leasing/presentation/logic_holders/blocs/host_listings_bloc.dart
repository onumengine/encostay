import 'package:encostay/features/host/leasing/presentation/logic_holders/states/host_listings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HostListingsBloc extends Bloc<HostListingsBloc, HostListingsState> {
  HostListingsBloc() : super(Loaded());

  @override
  Stream<HostListingsState> mapEventToState(HostListingsBloc event) async* {
    yield Loaded();
  }
}
