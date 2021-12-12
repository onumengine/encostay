import 'package:encostay/features/shared/onboarding/data/models/onboarding_status_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingStatusDataSource {
  OnboardingStatusModel checkOnboardingStatus();
  Future<OnboardingStatusModel> setOnboardingStatus(String key, bool value);
}

class OnboardingStatusDataSourceImpl implements OnboardingStatusDataSource {
  final SharedPreferences preferences;

  OnboardingStatusDataSourceImpl({required this.preferences});

  @override
  OnboardingStatusModel checkOnboardingStatus() {
    try {
      final result = preferences.getBool('isFirstLaunch');
      return (result == null)
          ? OnboardingStatusModel(isFirstLaunch: true)
          : OnboardingStatusModel(isFirstLaunch: result);
    } catch (e) {
      print(e);
      throw e;
    }
  }

  @override
  Future<OnboardingStatusModel> setOnboardingStatus(
      String key, bool value) async {
    try {
      await preferences.setBool(key, value);
      return OnboardingStatusModel(isFirstLaunch: false);
    } catch (e) {
      throw e;
    }
  }
}
