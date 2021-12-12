import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';

class OnboardingStatusModel extends OnboardingStatusEntity {
  final bool isOnboardingComplete;

  OnboardingStatusModel({required this.isOnboardingComplete})
      : super(isOnboardingComplete: isOnboardingComplete);
}
