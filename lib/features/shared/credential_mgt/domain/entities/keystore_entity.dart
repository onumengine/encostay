import 'package:equatable/equatable.dart';

class KeystoreEntity extends Equatable {
  final String key;
  final String value;

  KeystoreEntity({required this.key, required this.value});

  @override
  List<Object?> get props => [key, value];
}
