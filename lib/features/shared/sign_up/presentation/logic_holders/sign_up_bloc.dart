import 'dart:async';

import 'package:encostay/core/utilities/enums.dart';
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
    if (event is SelectAccountType) {
      handleAccountTypeSelection(event);
      yield SigningUp(
        accountType: accountType!,
        dateOfBirth: dateOfBirth!,
      );
    } else if (event is AppendDateOfBirth) {
      handleDOBSelection(event);
      yield SigningUp(
        accountType: accountType!,
        dateOfBirth: dateOfBirth!,
      );
    } else if (event is AppendUserData) {
      yield ValidatingInput();
      Timer(Duration(milliseconds: 500), () {});
      yield getStateFromInput(event);
    } else if (event is AppendPassword) {
      yield ValidatingInput();
      Timer(Duration(milliseconds: 500), () {});
      yield getStateFromInput(event);
    }
  }

  void handleAccountTypeSelection(SelectAccountType event) {
    dateOfBirth ??= DateTime.now();
    accountType = event.accountType;
  }

  void handleDOBSelection(AppendDateOfBirth event) {
    formData['dateOfBirth'] = event.dateOfBirth.toString();
  }

  SignUpState getStateFromInput(SignUpEvent event) {
    if (event is AppendPassword) {
      if (event.firstPasswordEntry == event.secondPasswordEntry) {
        return Validated(accountType: accountType!);
      } else {
        return DetectedInvalidInput();
      }
    } else if (event is AppendUserData) {
      if (event.firstPasswordEntry == event.secondPasswordEntry) {
        return Validated(accountType: event.accountType);
      } else {
        return DetectedInvalidInput();
      }
    } else {
      return ValidatingInput();
    }
  }
}
