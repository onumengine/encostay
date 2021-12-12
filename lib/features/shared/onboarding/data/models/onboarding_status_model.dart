import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';

class OnboardingStatusModel extends OnboardingStatusEntity {
  final bool isFirstLaunch;

  OnboardingStatusModel({required this.isFirstLaunch})
      : super(isFirstLaunch: isFirstLaunch);
}
