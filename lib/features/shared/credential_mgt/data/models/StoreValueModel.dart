import 'package:encostay/features/shared/credential_mgt/domain/entities/StoreValueEntity.dart';

class StoreValueModel extends StoreValueEntity {
  final String key;
  final String value;

  StoreValueModel({
    required this.key,
    required this.value,
  }) : super(key: key, value: value);

  factory StoreValueModel.fromString(String key, String storeValue) {
    return StoreValueModel(key: key, value: storeValue);
  }
}
