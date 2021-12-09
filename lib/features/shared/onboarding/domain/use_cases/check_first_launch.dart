import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/onboarding/domain/entities/launch_status_entity.dart';

class CheckFirstLaunch extends UseCase<LaunchStatusEntity, NoParams> {
  @override
  Future<Either<Failure, LaunchStatusEntity>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
