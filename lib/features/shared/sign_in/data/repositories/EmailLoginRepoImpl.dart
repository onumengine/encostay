import 'package:encostay/core/network/NetworkInfo.dart';
import 'package:encostay/features/shared/sign_in/data/data_sources/LoginDataSource.dart';
import 'package:encostay/features/shared/sign_in/domain/entities/LoginCredentialEntity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/sign_in/domain/repositories/EmailLoginRepo.dart';

class EmailLoginRepoImpl implements EmailLoginRepo {
  final LoginDataSource dataSource;
  final NetworkInfo networkInfo;

  EmailLoginRepoImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, LoginCredentialEntity>> loginWithEmail(
      Map<String, String> loginData) async {
    if (await networkInfo.deviceIsConnected) {
      try {
        final loginCredential = await dataSource.login(loginData);
        return Right(loginCredential);
      } on Exception catch (_) {
        return Left(LoginFailure());
      }
    } else {
      return Left(ConnectionFailure());
    }
  }
}
