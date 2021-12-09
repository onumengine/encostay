import 'package:encostay/features/shared/credential_mgt/data/models/key_store_object_model.dart';
import 'package:encostay/features/shared/credential_mgt/data/models/storage_success_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class KeyStore {
  Future<KeystoreObjectModel> fetchValue(String key);
  Future<StorageSuccessModel> saveToStore(String key, String value);
}

class KeyStoreImpl implements KeyStore {
  final FlutterSecureStorage secureStorage;

  KeyStoreImpl({required this.secureStorage});

  @override
  Future<KeystoreObjectModel> fetchValue(String key) async {
    try {
      final storeValue = await secureStorage.read(key: key);
      return KeystoreObjectModel.fromString(key, storeValue!);
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<StorageSuccessModel> saveToStore(String key, String value) async {
    try {
      await secureStorage.write(key: key, value: value);
      return StorageSuccessModel();
    } on Exception catch (e) {
      throw e;
    }
  }
}
