import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/launch_status_entity.dart';

abstract class LaunchStatusCheckRepo {
  Future<Either<Failure, LaunchStatusEntity>> checkLaunchStatus();
}
