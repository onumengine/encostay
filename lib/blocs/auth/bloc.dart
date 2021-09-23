import 'package:encostay/blocs/auth/event.dart';
import 'package:encostay/blocs/auth/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late String email, password, confirmPassword;

  AuthBloc(AuthState initialState) : super(initialState);

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
