import 'package:encostay/features/shared/credential_mgt/data/data_sources/KeyStore.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/StoreValueEntity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/credential_mgt/domain/repositories/FetchValueRepo.dart';

class FetchValueRepoImpl implements FetchValueRepo {
  final KeyStore keyStore;

  FetchValueRepoImpl({required this.keyStore});

  @override
  Future<Either<Failure, StoreValueEntity>> fetchValue(String key) async {
    try {
      final StoreValueEntity storeValue = await keyStore.fetchValue(key);
      return Right(storeValue);
    } on Exception catch (e) {
      return Left(KeyFetchingFailure());
    }
  }
}
