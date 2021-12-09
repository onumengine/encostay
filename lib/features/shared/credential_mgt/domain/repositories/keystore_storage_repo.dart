import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/storage_success_entity.dart';

abstract class KeystoreStorageRepo {
  Future<Either<Failure, StorageSuccessEntity>> save(String key, String value);
}
