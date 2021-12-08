import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';

abstract class UseCase<EntityType, Params> {
  Future<Either<Failure, EntityType>> call(Params params);
}
