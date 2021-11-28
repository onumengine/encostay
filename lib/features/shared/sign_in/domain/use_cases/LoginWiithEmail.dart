import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/sign_in/domain/entities/LoginCredential.dart';

class LoginWithEmail implements UseCase<LoginCredential, LoginParams> {
  @override
  Future<Either<Failure, LoginCredential>> call(LoginParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class LoginParams extends Params {
  final String email, password;

  LoginParams({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
