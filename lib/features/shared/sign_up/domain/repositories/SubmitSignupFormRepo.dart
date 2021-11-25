import 'package:dartz/dartz.dart';
import 'package:encostay/core/error/Failure.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';

abstract class SubmitSignupFormRepo {
  Future<Either<Failure, UserCredentialEntity>> submitForm(
      Map<String, dynamic> formData);
}
