import 'package:encostay/features/shared/authentication/presentation/logic_holders/events/auth_event.dart';
import 'package:encostay/features/shared/authentication/presentation/logic_holders/states/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthState initialState) : super(initialState);

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
