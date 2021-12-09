import 'package:encostay/features/Params.dart';
import 'package:encostay/features/shared/onboarding/domain/use_cases/check_first_launch.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/event.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CheckFirstLaunch checkFirstLaunch;

  SplashBloc({required this.checkFirstLaunch}) : super(DefaultSplashState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is CheckForFirstLaunch) {
      final result = await checkFirstLaunch(NoParams());
      yield result.fold(
        (failure) => Error(),
        (launchStatusEntity) => (launchStatusEntity.isFirstLaunch)
            ? FirstLaunchState()
            : NonFirstLaunchState(),
      );
    }
  }
}
