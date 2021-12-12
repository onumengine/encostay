import 'package:encostay/features/shared/onboarding/data/data_sources/launch_data_source.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/launch_status_entity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/launch_status_repo.dart';

class LaunchStatusRepoImpl implements LaunchStatusRepo {
  final LaunchDataSource dataSource;

  LaunchStatusRepoImpl({required this.dataSource});

  @override
  Future<Either<Failure, LaunchStatusEntity>> checkLaunchStatus() async {
    try {
      final LaunchStatusEntity result = await dataSource.checkLaunchStatus();
      return Right(result);
    } catch (e) {
      return Left(LaunchStatusCheckFailure());
    }
  }
}
