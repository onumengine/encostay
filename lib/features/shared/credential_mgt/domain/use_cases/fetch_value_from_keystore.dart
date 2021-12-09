import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/keystore_entity.dart';
import 'package:encostay/features/shared/credential_mgt/domain/repositories/fetch_value_repo.dart';

class FetchValueFromKeystore implements UseCase<KeystoreEntity, KeyParam> {
  final FetchValueRepo repository;

  FetchValueFromKeystore({required this.repository});

  @override
  Future<Either<Failure, KeystoreEntity>> call(KeyParam params) async {
    return await repository.fetchValue(params.key);
  }
}

class KeyParam extends Params {
  final String key;

  KeyParam({required this.key});

  @override
  List<Object?> get props => [key];
}
