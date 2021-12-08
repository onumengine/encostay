import 'package:encostay/features/shared/credential_mgt/domain/entities/StoreValueEntity.dart';

class StoreValueModel extends StoreValueEntity {
  final String value;

  StoreValueModel({required this.value}) : super(value: value);

  factory StoreValueModel.fromString(String storeValue) {
    return StoreValueModel(value: storeValue);
  }
}
