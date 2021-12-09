import 'package:encostay/features/shared/credential_mgt/data/data_sources/key_store.dart';
import 'package:encostay/features/shared/credential_mgt/data/models/storage_success_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

/*
void main() {
  final secureStorage = MockFlutterSecureStorage();
  final keyStore = KeyStoreImpl(secureStorage: secureStorage);

  setUp(() {
    final successModel = StorageSuccessModel();
    when(secureStorage.write(key: any, value: any))
        .thenReturn((realInvocation) => successModel);
  });
}
*/
