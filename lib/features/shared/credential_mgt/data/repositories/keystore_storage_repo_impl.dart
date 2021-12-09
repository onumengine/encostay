import 'package:encostay/features/shared/credential_mgt/data/data_sources/key_store.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/storage_success_entity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/credential_mgt/domain/repositories/keystore_storage_repo.dart';

class ValueStorageRepoImpl implements KeystoreStorageRepo {
  final KeyStore keystore;

  ValueStorageRepoImpl({required this.keystore});

  @override
  Future<Either<Failure, StorageSuccessEntity>> save(
      String key, String value) async {
    try {
      final StorageSuccessEntity result =
          await keystore.saveToStore(key, value);
      return Right(result);
    } on Exception catch (_) {
      return Left(KeyValueStoringFailure());
    }
  }
}
