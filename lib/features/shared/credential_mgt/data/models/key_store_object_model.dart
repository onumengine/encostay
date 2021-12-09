import 'package:encostay/features/shared/credential_mgt/domain/entities/keystore_entity.dart';

class KeystoreObjectModel extends KeystoreEntity {
  final String key;
  final String value;

  KeystoreObjectModel({
    required this.key,
    required this.value,
  }) : super(key: key, value: value);

  factory KeystoreObjectModel.fromString(String key, String storeValue) {
    return KeystoreObjectModel(key: key, value: storeValue);
  }
}
