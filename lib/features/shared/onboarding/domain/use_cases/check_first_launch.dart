import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/launch_status_entity.dart';
import 'package:encostay/features/shared/onboarding/domain/repositories/launch_status_repo.dart';

class CheckFirstLaunch extends UseCase<LaunchStatusEntity, NoParams> {
  final LaunchStatusRepo repository;

  CheckFirstLaunch({required this.repository});

  @override
  Future<Either<Failure, LaunchStatusEntity>> call(NoParams params) async {
    return await repository.checkLaunchStatus();
  }
}
