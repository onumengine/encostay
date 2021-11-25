import 'dart:convert';

import 'package:encostay/features/shared/sign_up/data/models/UserCredentialModel.dart';
import 'package:http/http.dart';

class RemoteDataSource {
  final Client client;

  RemoteDataSource({required this.client});

  Future<UserCredentialModel> submitForm(Map<String, dynamic> formData) async {
    try {
      final response = await client.post(
        Uri.parse('http://ecostay.psms.online/v1/auth/register'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(formData),
      );
      return UserCredentialModel.fromJSON(jsonDecode(response.body));
    } on Exception catch (e) {
      throw e;
    }
  }
}
