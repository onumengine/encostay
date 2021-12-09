import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/launch_status_entity.dart';

class CheckFirstLaunch extends UseCase<NoParams, LaunchStatusEntity> {
  @override
  Future<Either<Failure, NoParams>> call(LaunchStatusEntity params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
