import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/sign_in/domain/entities/LoginCredential.dart';

abstract class EmailLoginRepo {
  Future<Either<Failure, LoginCredentialEntity>> loginWithEmail(
    Map<String, String> loginData,
  );
}
