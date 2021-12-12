import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';

abstract class OnboardingStatusRepo {
  Future<Either<Failure, OnboardingStatusEntity>> checkOnboardingStatus();
  Future<Either<Failure, OnboardingStatusEntity>> setOnboardingStatus(
      bool value);
}
