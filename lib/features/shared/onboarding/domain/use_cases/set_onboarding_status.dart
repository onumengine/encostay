import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/onboarding_status_repo.dart';

class SetOnboardingStatus
    implements UseCase<OnboardingStatusEntity, OnboardingStatusParams> {
  final OnboardingStatusRepo repository;

  SetOnboardingStatus({required this.repository});

  @override
  Future<Either<Failure, OnboardingStatusEntity>> call(
      OnboardingStatusParams params) async {
    return repository.setOnboardingStatus(params.isOnboardingComplete);
  }
}

class OnboardingStatusParams extends Params {
  final bool isOnboardingComplete;

  OnboardingStatusParams({required this.isOnboardingComplete});

  @override
  List<Object?> get props => [isOnboardingComplete];
}
