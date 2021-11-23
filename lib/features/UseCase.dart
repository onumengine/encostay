import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';

abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}
