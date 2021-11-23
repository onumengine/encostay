import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';

class SubmitSignupForm implements UseCase<UserCredentialEntity> {
  @override
  Future<Either<Failure, UserCredentialEntity>> call() {
    // TODO: implement call method
    throw UnimplementedError();
  }
}
