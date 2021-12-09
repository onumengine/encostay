import 'package:encostay/features/shared/onboarding/data/models/launch_status_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  Future<LaunchStatusModel> checkLaunchStatus();
  Future<LaunchStatusModel> setLaunchStatus();
}

class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences preferences;

  LocalDataSourceImpl({required this.preferences});

  @override
  Future<LaunchStatusModel> checkLaunchStatus() async {
    try {
      final result = preferences.getBool('isFirstLaunch');
      return LaunchStatusModel(isFirstLaunch: result!);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<LaunchStatusModel> setLaunchStatus() async {
    try {
      await preferences.setBool('isFirstLaunch', false);
      return LaunchStatusModel(isFirstLaunch: false);
    } catch (e) {
      throw e;
    }
  }
}
