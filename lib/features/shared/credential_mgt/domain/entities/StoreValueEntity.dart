import 'package:equatable/equatable.dart';

class StoreValueEntity extends Equatable {
  final String value;

  StoreValueEntity({required this.value});

  @override
  List<Object?> get props => [value];
}
