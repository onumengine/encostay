import 'package:equatable/equatable.dart';

class OnboardingStatusEntity extends Equatable {
  final bool isFirstLaunch;

  OnboardingStatusEntity({required this.isFirstLaunch});

  @override
  List<Object?> get props => [isFirstLaunch];
}
