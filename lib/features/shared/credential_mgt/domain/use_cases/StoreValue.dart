import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/StorageSuccessEntity.dart';

class StoreValue extends UseCase<StorageSuccessEntity, StorageParams> {
  @override
  Future<Either<Failure, StorageSuccessEntity>> call(StorageParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class StorageParams extends Params {
  final String key;
  final String value;

  StorageParams({
    required this.key,
    required this.value,
  });

  @override
  List<Object?> get props => [
        key,
        value,
      ];
}
