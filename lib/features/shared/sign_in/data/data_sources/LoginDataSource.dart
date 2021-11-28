import 'dart:convert';

import 'package:encostay/features/shared/sign_in/data/models/LoginCredentialModel.dart';
import 'package:http/http.dart';

abstract class LoginDataSource {
  Future<LoginCredentialModel> login(Map<String, String> loginData);
}

class LoginDataSourceImpl implements LoginDataSource {
  final Client client;

  LoginDataSourceImpl({required this.client});

  Future<LoginCredentialModel> login(Map<String, String> loginData) async {
    try {
      final response = await client.post(
        Uri.parse('http://ecostay.psms.online/v1/auth/register'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(loginData),
      );
      return LoginCredentialModel.fromJSON(jsonDecode(response.body));
    } on Exception catch (e) {
      throw e;
    }
  }
}
