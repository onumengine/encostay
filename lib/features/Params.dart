import 'package:equatable/equatable.dart';

/// This class is a container for wrapping the data that will be passed into a
/// [UseCase].
class Params extends Equatable {
  @override
  List<Object?> get props => [];
}

/// This class is a container that will be passed into a [UseCase] when there is
/// no data to be passed into it.
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
