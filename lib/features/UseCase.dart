import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
