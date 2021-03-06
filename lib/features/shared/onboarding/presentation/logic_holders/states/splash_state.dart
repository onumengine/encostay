import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {
  @override
  List<Object?> get props => [];
}

class DefaultSplashState extends SplashState {}

class FirstLaunchState extends SplashState {}

class OnboardingCompleted extends SplashState {}

class Error extends SplashState {}
