import 'package:encostay/core/network/NetworkInfo.dart';
import 'package:encostay/features/shared/sign_up/data/data_sources/RemoteDataSource.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/sign_up/domain/repositories/SubmitSignupFormRepo.dart';

class SubmitSignupFormRepoImpl implements SubmitSignupFormRepo {
  final RemoteDataSource remoteDataSource;
  final NetworkInfo connectionChecker;

  SubmitSignupFormRepoImpl({
    required this.remoteDataSource,
    required this.connectionChecker,
  });

  @override
  Future<Either<Failure, UserCredentialEntity>> submitForm(
      Map<String, dynamic> formData) async {
    if (await connectionChecker.deviceIsConnected) {
      try {
        final UserCredentialEntity credential =
            await remoteDataSource.submitForm(formData);
        return Right(credential);
      } on Exception catch (e) {
        return Left(SignupFailure(message: e.toString()));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }
}
