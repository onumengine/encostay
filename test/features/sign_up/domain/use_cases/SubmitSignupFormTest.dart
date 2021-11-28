import 'package:dartz/dartz.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';
import 'package:encostay/features/shared/sign_up/domain/repositories/SubmitSignupFormRepo.dart';
import 'package:encostay/features/shared/sign_up/domain/use_cases/SubmitSignupForm.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSubmitSignupFormRepo extends Mock implements SubmitSignupFormRepo {}

void main() {
  SubmitSignupForm? useCase;
  MockSubmitSignupFormRepo? mockRepository;

  setUp(() {
    mockRepository = MockSubmitSignupFormRepo();
    useCase = SubmitSignupForm(repository: mockRepository!);
  });

  final Map<String, dynamic> formData = <String, dynamic>{
    'name': 'Jane',
    'type': 'GUEST',
    'email': 'mail@jane.doe',
    'password': '123456',
  };
  final UserCredentialEntity credential = UserCredentialEntity(
    accountType: 'GUEST',
    userID: 'JaneDoe1234',
  );

  test('should return a UserCredentialEntity', () {
    when(mockRepository?.submitForm(formData))
        .thenAnswer((_) async => Right(credential));

    final result = useCase!(FormParam(data: formData));

    expect(result, Right(credential));
    verify(mockRepository?.submitForm(formData));
    verifyNoMoreInteractions(mockRepository);
  });
}
