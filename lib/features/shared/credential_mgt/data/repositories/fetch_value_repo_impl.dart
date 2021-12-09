import 'package:encostay/features/shared/credential_mgt/data/data_sources/key_store.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/keystore_entity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/credential_mgt/domain/repositories/fetch_value_repo.dart';

class FetchValueRepoImpl implements FetchValueRepo {
  final KeyStore keyStore;

  FetchValueRepoImpl({required this.keyStore});

  @override
  Future<Either<Failure, KeystoreEntity>> fetchValue(String key) async {
    try {
      final KeystoreEntity storeValue = await keyStore.fetchValue(key);
      return Right(storeValue);
    } on Exception catch (e) {
      return Left(KeyFetchingFailure());
    }
  }
}
