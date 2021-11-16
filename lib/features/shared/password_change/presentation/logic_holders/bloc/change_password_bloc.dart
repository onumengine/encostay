import 'package:encostay/features/shared/password_change/presentation/logic_holders/event/change_password_event.dart';
import 'package:encostay/features/shared/password_change/presentation/logic_holders/state/change_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(Default());

  @override
  Stream<ChangePasswordState> mapEventToState(
      ChangePasswordEvent event) async* {
    yield Default();
  }
}
