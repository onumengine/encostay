import 'package:equatable/equatable.dart';

abstract class OnboardingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnboardingInProgress extends OnboardingState {}

class OnboardingComplete extends OnboardingState {}
