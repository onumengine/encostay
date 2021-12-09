import 'package:equatable/equatable.dart';

class LaunchStatusEntity extends Equatable {
  final bool isFirstLaunch;

  LaunchStatusEntity({required this.isFirstLaunch});

  @override
  List<Object?> get props => [isFirstLaunch];
}
