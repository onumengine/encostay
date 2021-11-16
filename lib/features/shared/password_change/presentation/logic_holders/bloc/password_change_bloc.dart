import 'package:encostay/features/shared/password_change/presentation/logic_holders/event/password_change_event.dart';
import 'package:encostay/features/shared/password_change/presentation/logic_holders/state/password_change_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordChangeBloc
    extends Bloc<PasswordChangeEvent, PasswordChangeState> {
  PasswordChangeBloc() : super(Default());

  @override
  Stream<PasswordChangeState> mapEventToState(
      PasswordChangeEvent event) async* {
    yield Default();
  }
}
