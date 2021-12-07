import 'dart:async';

import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';
import 'package:encostay/features/shared/sign_up/domain/use_cases/SubmitSignupForm.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_event.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SubmitSignupForm submitSignupForm;

  /// I'll create a temporary map to hold form data for testing purposes
  /// I'll pass the user input into across two pages
  final Map<String, dynamic> formData = {
    'accountType': 'GUEST',
  };

  SignUpBloc({
    required this.submitSignupForm,
  }) : super(SigningUp(data: {}));

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is AppendAccountType) {
      handleAccountTypeSelection(event);
      yield SigningUp(data: formData);
    } else if (event is AppendDateOfBirth) {
      handleDOBSelection(event);
      yield SigningUp(data: formData);
    } else if (event is AppendUserData) {
      handleAppendUserData(event);
      yield SigningUp(data: formData);
    } else if (event is AppendPassword) {
      yield ValidatingInput();
      handlePasswordSelection(event);
      Timer(Duration(milliseconds: 500), () {});
      //yield SigningUp(data: formData);
    } else if (event is SubmitForm) {
      final result = await submitSignupForm(FormParam(data: formData));
      yield result.fold(
        (Failure failure) => SignUpFailed(failureMessage: 'Signup failed, bro'),
        (UserCredentialEntity entity) => SignUpComplete(
          accountType: formData['accountType'],
        ),
      );
    }
  }

  void handleAccountTypeSelection(AppendAccountType event) {
    if (event.accountType == 'GUEST') {
      formData['accountType'] = 'GUEST';
    } else if (event.accountType == 'HOST') {
      formData['accountType'] = 'HOST';
    }
    print('SIGN UP FORM DATA: $formData');
  }

  void handleAppendUserData(AppendUserData event) {
    formData['firstName'] = event.firstName;
    formData['lastName'] = event.lastName;
    formData['email'] = event.email;
    print('SIGN UP FORM DATA: $formData');
  }

  void handleDOBSelection(AppendDateOfBirth event) {
    formData['dateOfBirth'] =
        event.dateOfBirth.toString().split(' ').elementAt(0);
    print('SIGN UP FORM DATA: $formData');
  }

  void handlePasswordSelection(AppendPassword event) {
    if (bothPasswordsMatch(event)) {
      formData['password'] = event.secondPasswordEntry;
    }
    print('SIGN UP FORM DATA: $formData');
  }

  bool bothPasswordsMatch(AppendPassword event) {
    return (event.firstPasswordEntry == event.secondPasswordEntry);
  }

  // SignUpState getStateFromInput(SignUpEvent event) {
  //   if (event is AppendPassword) {
  //     if (event.firstPasswordEntry == event.secondPasswordEntry) {
  //       return Validated(accountType: accountType!);
  //     } else {
  //       return DetectedInvalidInput();
  //     }
  //   } else {
  //     return ValidatingInput();
  //   }
  // }
}
