import 'package:encostay/features/shared/sign_in/domain/use_cases/LoginWiithEmail.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_event.dart';
import 'package:encostay/features/shared/sign_in/presentation/logic_holders/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final LoginWithEmail loginWithEmail;
  final Map<String, String> loginData = {};

  SignInBloc({required this.loginWithEmail}) : super(DefaultSignInState());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    if (event is SubmitSignInForm) {
      yield SigningIn();
      updateLoginData(event);
      final result = await loginWithEmail(LoginParams(loginData: loginData));
      yield result.fold(
          (failure) => SignInFailed(), (loginCredential) => SignInComplete());
    }
  }

  void updateLoginData(SubmitSignInForm event) {
    loginData['email'] = event.email;
    loginData['password'] = event.password;
    print('LOGIN DATA: $loginData');
  }
}
