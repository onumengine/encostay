import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';
import 'package:encostay/features/shared/sign_up/domain/repositories/SubmitSignupFormRepo.dart';

class SubmitSignupForm implements UseCase<UserCredentialEntity, FormParam> {
  final SubmitSignupFormRepo repository;

  SubmitSignupForm({required this.repository});

  @override
  Future<Either<Failure, UserCredentialEntity>> call(FormParam form) async {
    return await repository.submitForm(form.data);
  }
}

class FormParam extends Params {
  final Map data;

  FormParam({required this.data});

  @override
  List<Object?> get props => [data];
}
