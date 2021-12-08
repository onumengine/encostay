import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/StoreValueEntity.dart';

abstract class FetchValueRepo {
  Future<Either<Failure, StoreValueEntity>> fetchValue(String key);
}
