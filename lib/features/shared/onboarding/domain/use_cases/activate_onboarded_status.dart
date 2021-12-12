import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';

class ActivateOnboardedStatus
    implements UseCase<OnboardingStatusEntity, NoParams> {
  @override
  Future<Either<Failure, OnboardingStatusEntity>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
