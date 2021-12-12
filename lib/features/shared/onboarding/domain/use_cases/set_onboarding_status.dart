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
    return repository.setOnboardingStatus(params.value);
  }
}

class OnboardingStatusParams extends Params {
  final bool value;

  OnboardingStatusParams({required this.value});

  @override
  List<Object?> get props => [value];
}
