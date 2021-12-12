import 'package:encostay/features/shared/onboarding/data/data_sources/onboarding_status_data_source.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/onboarding_status_repo.dart';

class OnboardingStatusRepoImpl implements OnboardingStatusRepo {
  final OnboardingStatusDataSource dataSource;

  OnboardingStatusRepoImpl({required this.dataSource});

  @override
  Either<Failure, OnboardingStatusEntity> checkOnboardingStatus() {
    try {
      final OnboardingStatusEntity result = dataSource.checkOnboardingStatus();
      return Right(result);
    } catch (e) {
      return Left(OnboardingStatusCheckFailure());
    }
  }

  @override
  Future<Either<Failure, OnboardingStatusEntity>> setOnboardingStatus(
      bool value) async {
    try {
      final OnboardingStatusEntity result =
          await dataSource.setOnboardingStatus(value);
      return Right(result);
    } catch (e) {
      return Left(OnboardedStatusActivationFailure());
    }
  }
}
