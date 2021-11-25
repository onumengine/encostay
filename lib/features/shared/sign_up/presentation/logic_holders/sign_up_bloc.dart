import 'dart:async';

import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';
import 'package:encostay/features/shared/sign_up/domain/use_cases/SubmitSignupForm.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_event.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SubmitSignupForm submitSignupForm;
  AccountType? accountType;
  DateTime? dateOfBirth;

  /// I'll create a temporary map to hold form data for testing purposes
  /// I'll pass the user input into across two pages
  final Map<String, dynamic> formData = {};

  SignUpBloc({
    required this.submitSignupForm,
  }) : super(Unregistered());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is AppendAccountType) {
      handleAccountTypeSelection(event);
    } else if (event is AppendDateOfBirth) {
      handleDOBSelection(event);
    } else if (event is AppendUserData) {
      yield ValidatingInput();
      Timer(Duration(milliseconds: 500), () {});
    } else if (event is AppendPassword) {
      yield ValidatingInput();
      handlePasswordSelection(event);
      Timer(Duration(milliseconds: 500), () {});
    } else if (event is SubmitForm) {
      final result = await submitSignupForm(FormParam(data: formData));
      yield result.fold(
        (Failure failure) => SignUpFailed(failureMessage: 'Signup failed, bro'),
        (UserCredentialEntity entity) => SignUpComplete(),
      );
    }
  }

  void handleAccountTypeSelection(AppendAccountType event) {
    if (event.accountType == AccountType.guest) {
      formData['accountType'] = 'GUEST';
    } else if (event.accountType == AccountType.host) {
      formData['accountType'] = 'HOST';
    }
    print('SIGN UP FORM DATA: $formData');
  }

  void handleDOBSelection(AppendDateOfBirth event) {
    formData['dateOfBirth'] = event.dateOfBirth.toString();
    print('SIGN UP FORM DATA: $formData');
  }

  void handlePasswordSelection(AppendPassword event) {
    if (bothPasswordsMatch(event)) {
      formData['password'] = event.secondPasswordEntry;
    } else {}
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
