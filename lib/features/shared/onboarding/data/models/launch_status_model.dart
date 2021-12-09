import 'package:encostay/features/shared/onboarding/domain/entities/launch_status_entity.dart';

class LaunchStatusModel extends LaunchStatusEntity {
  final bool isFirstLaunch;

  LaunchStatusModel({required this.isFirstLaunch})
      : super(isFirstLaunch: isFirstLaunch);
}
