import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/credential_mgt/domain/entities/StoreValueEntity.dart';
import 'package:encostay/features/shared/credential_mgt/domain/repositories/FetchValueRepo.dart';

class FetchValue implements UseCase<StoreValueEntity, KeyParam> {
  final FetchValueRepo repository;

  FetchValue({required this.repository});

  @override
  Future<Either<Failure, StoreValueEntity>> call(KeyParam params) async {
    return await repository.fetchValue(params.key);
  }
}

class KeyParam extends Params {
  final String key;

  KeyParam({required this.key});

  @override
  List<Object?> get props => [key];
}
