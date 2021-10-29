import 'package:encostay/features/shared/authentication/presentation/logic_holders/events/auth_event.dart';
import 'package:encostay/features/shared/authentication/presentation/logic_holders/states/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(Unauthenticated());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) {
    // TODO: Implement mapEventToState
    throw UnimplementedError();
  }
}
