import 'package:equatable/equatable.dart';

class StoreValueEntity extends Equatable {
  final String key;
  final String value;

  StoreValueEntity({required this.key, required this.value});

  @override
  List<Object?> get props => [key, value];
}
