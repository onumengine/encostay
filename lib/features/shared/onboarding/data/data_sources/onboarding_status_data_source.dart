import 'package:encostay/features/shared/onboarding/data/models/onboarding_status_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingStatusDataSource {
  OnboardingStatusModel checkOnboardingStatus();
  Future<OnboardingStatusModel> setOnboardingStatus(bool value);
}

class OnboardingStatusDataSourceImpl implements OnboardingStatusDataSource {
  final SharedPreferences preferences;

  OnboardingStatusDataSourceImpl({required this.preferences});

  @override
  OnboardingStatusModel checkOnboardingStatus() {
    try {
      final result = preferences.getBool('isOnboardingCompleted');
      return (result == null)
          ? OnboardingStatusModel(isOnboardingComplete: false)
          : OnboardingStatusModel(isOnboardingComplete: result);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<OnboardingStatusModel> setOnboardingStatus(bool value) async {
    try {
      await preferences.setBool('isOnboardingCompleted', value);
      return OnboardingStatusModel(isOnboardingComplete: true);
    } catch (e) {
      throw e;
    }
  }
}
