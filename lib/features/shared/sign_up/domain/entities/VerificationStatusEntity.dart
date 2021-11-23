import 'package:equatable/equatable.dart';

class VerificationStatusEntity extends Equatable {
  final bool status;

  VerificationStatusEntity(this.status);

  @override
  List<Object?> get props => [status];
}
