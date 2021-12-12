import 'package:encostay/features/Params.dart';
import 'package:encostay/features/shared/onboarding/domain/use_cases/check_onboarding_status.dart';
import 'package:encostay/features/shared/onboarding/domain/use_cases/set_onboarding_status.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/events/splash_event.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/states/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CheckOnboardingStatus checkFirstLaunch;
  final SetOnboardingStatus setOnboardingStatus;

  SplashBloc(
      {required this.checkFirstLaunch, required this.setOnboardingStatus})
      : super(DefaultSplashState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is CheckForFirstLaunch) {
      final result = await checkFirstLaunch(NoParams());
      yield result.fold(
        (failure) => Error(),
        (onboardingStatusEntity) =>
            (onboardingStatusEntity.isOnboardingComplete)
                ? OnboardingCompleted()
                : FirstLaunchState(),
      );
    } else if (event is MimicFirstLaunch) {
      final result = await setOnboardingStatus(
          OnboardingStatusParams(isOnboardingComplete: false));
      yield result.fold(
        (failure) => Error(),
        (onboardingStatusEntity) =>
            (onboardingStatusEntity.isOnboardingComplete)
                ? OnboardingCompleted()
                : FirstLaunchState(),
      );
    }
  }
}
