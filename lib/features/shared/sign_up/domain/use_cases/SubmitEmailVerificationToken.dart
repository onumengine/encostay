import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/VerificationStatusEntity.dart';

class SubmitEmailVerificationToken
    implements UseCase<VerificationStatusEntity> {
  @override
  Future<Either<Failure, VerificationStatusEntity>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
