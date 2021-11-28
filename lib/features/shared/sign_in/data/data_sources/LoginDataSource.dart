import 'package:encostay/features/shared/sign_up/data/models/UserCredentialModel.dart';
import 'package:http/http.dart';

abstract class LoginDataSource {
  Future<UserCredentialModel> login(Map<String, String> loginData);
}

class LoginDataSourceImpl implements LoginDataSource {
  final Client client;

  LoginDataSourceImpl({required this.client});

  Future<UserCredentialModel> login(Map<String, String> loginData) async {
    return UserCredentialModel(userID: 'userID', accountType: 'accountType');
  }
}
