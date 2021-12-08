import 'package:encostay/features/shared/credential_mgt/data/models/StoreValueModel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class KeyStore {
  Future<StoreValueModel> fetchValue(String key);
}

class KeyStoreImpl implements KeyStore {
  final FlutterSecureStorage secureStorage;

  KeyStoreImpl({required this.secureStorage});

  @override
  Future<StoreValueModel> fetchValue(String key) async {
    try {
      final storeValue = await secureStorage.read(key: key);
      return StoreValueModel.fromString(storeValue!);
    } on Exception catch (e) {
      throw e;
    }
  }
}
