import 'package:equatable/equatable.dart';

class OnboardingStatusEntity extends Equatable {
  final bool isOnboardingComplete;

  OnboardingStatusEntity({required this.isOnboardingComplete});

  @override
  List<Object?> get props => [isOnboardingComplete];
}
