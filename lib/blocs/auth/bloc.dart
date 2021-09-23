import 'package:encostay/blocs/auth/event.dart';
import 'package:encostay/blocs/auth/state.dart';
import 'package:encostay/utilities/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late String? _email, _password, _confirmPassword, _firstName, _lastName;
  DateTime? _dateOfBirth;
  AccountType? _accountType;

  AuthBloc(AuthState initialState) : super(initialState);

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
