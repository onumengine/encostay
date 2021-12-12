import 'package:encostay/features/shared/onboarding/domain/use_cases/set_onboarding_status.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/events/onboarding_event.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/states/onboarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final SetOnboardingStatus setOnboardingStatus;

  OnboardingBloc({required this.setOnboardingStatus})
      : super(OnboardingInProgress());

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    if (event is CompleteOnboarding) {
      final result =
          await setOnboardingStatus(OnboardingStatusParams(value: true));
      yield result.fold(
        (failure) => OnboardingInProgress(),
        (entity) => OnboardingComplete(),
      );
    }
  }
}
