import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/onboarding_status_repo.dart';

class ActivateOnboardedStatus
    implements UseCase<OnboardingStatusEntity, NoParams> {
  final OnboardingStatusRepo repository;

  ActivateOnboardedStatus({required this.repository});

  @override
  Future<Either<Failure, OnboardingStatusEntity>> call(NoParams params) async {
    return repository.activateOnboardedStatus();
  }
}
