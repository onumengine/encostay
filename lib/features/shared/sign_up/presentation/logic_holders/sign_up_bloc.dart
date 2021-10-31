import 'dart:async';

import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_event.dart';
import 'package:encostay/features/shared/sign_up/presentation/logic_holders/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  AccountType? accountType;
  DateTime? dateOfBirth;

  SignUpBloc() : super(Unregistered());

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    if (event is SelectAccountType) {
      handleAccountTypeSelection(event);
      yield SigningUp(
        accountType: accountType!,
        dateOfBirth: dateOfBirth!,
      );
    } else if (event is SelectDateOfBirth) {
      handleDOBSelection(event);
      yield SigningUp(
        accountType: accountType!,
        dateOfBirth: dateOfBirth!,
      );
    } else if (event is SubmitSignUpForm) {
      yield ValidatingInput();
      Timer(Duration(milliseconds: 500), () {

      });
      yield getStateFromInput(event);
    }
  }

  void handleAccountTypeSelection(SelectAccountType event) {
    dateOfBirth ??= DateTime.now();
    accountType = event.accountType;
  }

  void handleDOBSelection(SelectDateOfBirth event) {
    accountType ??= AccountType.guest;
    dateOfBirth = event.dateOfBirth;
  }

  SignUpState getStateFromInput(SubmitSignUpForm event) {
    if (event.firstPasswordEntry == event.secondPasswordEntry) {
      return Validated();
    } else {
      return DetectedInvalidInput();
    }
  }
}
