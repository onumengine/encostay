// TODO: Create the SendEmailVerificationToken UseCase

/*
import 'package:encostay/core/error/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:encostay/features/Params.dart';
import 'package:encostay/features/UseCase.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/VerificationStatusEntity.dart';

class SubmitEmailVerificationToken
    implements UseCase<VerificationStatusEntity, Token> {
  final SubmitVerificationTokenRepo repository;

  SubmitEmailVerificationToken({required this.repository});

  @override
  Future<Either<Failure, VerificationStatusEntity>> call(Token token) async {
    return await repository.submitToken(token.number);
  }
}

class Token extends Params {
  final int number;

  Token({required this.number});

  @override
  List<Object?> get props => [number];
}
*/
