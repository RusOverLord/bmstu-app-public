import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:firebase_analytics/firebase_analytics.dart' as fa;

abstract class IAnalytics {
  static final IAnalytics instance = platform.mapDevice(
    mobile: () => FirebaseAnalytics(),
    desktop: () => AnalyticsDesktop(),
  );

  Future<void> setCurrentScreen({
    required String screenName,
    String screenClassOverride = 'Flutter',
  });
}

class FirebaseAnalytics implements IAnalytics {
  final _analytics = fa.FirebaseAnalytics();

  @override
  Future<void> setCurrentScreen({
    required String screenName,
    String screenClassOverride = 'Flutter',
  }) async {
    try {
      await _analytics.setCurrentScreen(
        screenName: screenName,
        screenClassOverride: screenClassOverride,
      );
    } catch (_) {}
  }
}

class AnalyticsDesktop extends IAnalytics {
  @override
  Future<void> setCurrentScreen({
    required String screenName,
    String screenClassOverride = 'Flutter',
  }) async {}
}
