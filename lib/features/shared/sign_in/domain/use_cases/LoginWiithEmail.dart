import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/sign_in/domain/entities/LoginCredential.dart';
import 'package:encostay/features/shared/sign_in/domain/repositories/EmailLoginRepo.dart';

class LoginWithEmail implements UseCase<LoginCredentialEntity, LoginParams> {
  final EmailLoginRepo repository;

  LoginWithEmail({required this.repository});

  @override
  Future<Either<Failure, LoginCredentialEntity>> call(
      LoginParams params) async {
    return await repository.loginWithEmail(params.loginData);
  }
}

class LoginParams extends Params {
  final Map<String, String> loginData;

  LoginParams({
    required this.loginData,
  });

  @override
  List<Object?> get props => [loginData];
}
