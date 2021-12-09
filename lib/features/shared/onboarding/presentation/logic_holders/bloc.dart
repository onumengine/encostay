import 'package:encostay/features/shared/onboarding/presentation/logic_holders/event.dart';
import 'package:encostay/features/shared/onboarding/presentation/logic_holders/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(SplashState initialState) : super(initialState);

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
