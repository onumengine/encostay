import 'package:encostay/features/shared/onboarding/data/data_sources/onboarding_status_data_source.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/onboarding_status_entity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/onboarding_status_repo.dart';

class OnbordingStatusRepoImpl implements OnboardingStatusRepo {
  final OnboardingStatusDataSource dataSource;

  OnbordingStatusRepoImpl({required this.dataSource});

  @override
  Future<Either<Failure, OnboardingStatusEntity>>
      checkOnboardingStatus() async {
    try {
      final OnboardingStatusEntity result =
          await dataSource.checkOnboardingStatus();
      return Right(result);
    } catch (e) {
      return Left(LaunchStatusCheckFailure());
    }
  }

  @override
  Future<Either<Failure, OnboardingStatusEntity>> activateOnboardedStatus() {
    // TODO: implement activateOnboardedStatus
    throw UnimplementedError();
  }
}
