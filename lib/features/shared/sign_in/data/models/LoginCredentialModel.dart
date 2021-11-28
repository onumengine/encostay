import 'package:encostay/features/shared/sign_in/domain/entities/LoginCredential.dart';

class LoginCredentialModel extends LoginCredentialEntity {
  LoginCredentialModel() : super();

  factory LoginCredentialModel.fromJSON(Map<String, dynamic> jsonMap) {
    return LoginCredentialModel();
  }
}
