import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CheckForFirstLaunch extends SplashEvent {}

class MimicFirstLaunch extends SplashEvent {}
