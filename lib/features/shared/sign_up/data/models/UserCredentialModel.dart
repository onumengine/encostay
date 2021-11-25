import 'package:encostay/core/utilities/enums.dart';
import 'package:encostay/features/shared/sign_up/domain/entities/UserCredentialEntity.dart';

class UserCredentialModel extends UserCredentialEntity {
  final String userID;
  final AccountType accountType;

  UserCredentialModel({required this.userID, required this.accountType})
      : super(accountType: accountType, userID: userID);

  factory UserCredentialModel.fromJSON(Map<String, dynamic> jsonMap) {
    return UserCredentialModel(
        userID: jsonMap['userID'], accountType: jsonMap['accountType']);
  }
}
