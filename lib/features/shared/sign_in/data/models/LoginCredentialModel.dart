import 'package:encostay/features/shared/sign_in/domain/entities/LoginCredentialEntity.dart';

class LoginCredentialModel extends LoginCredentialEntity {
  final String userID;

  LoginCredentialModel({required this.userID}) : super(userID: userID);

  factory LoginCredentialModel.fromJSON(Map<String, dynamic> jsonMap) {
    return LoginCredentialModel(userID: jsonMap['response']['message']);
  }
}
