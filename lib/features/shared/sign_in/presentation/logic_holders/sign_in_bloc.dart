import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_event.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(UnsignedIn());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
