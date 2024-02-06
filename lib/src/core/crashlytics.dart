import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

abstract class ICrashlytics {
  static late final ICrashlytics instance = platform.mapDevice(
    mobile: () => CrashlyticsFirebase(),
    desktop: () => CrashlyticsFake(),
  );

  Future<void> recordFlutterError(FlutterErrorDetails flutterErrorDetails);

  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<DiagnosticsNode> information = const [],
    bool? printDetails,
    bool fatal = false,
  });
}

class CrashlyticsFirebase implements ICrashlytics {
  final _crashlytics = FirebaseCrashlytics.instance;

  @override
  Future<void> recordFlutterError(FlutterErrorDetails flutterErrorDetails) =>
      _crashlytics.recordFlutterError(flutterErrorDetails);

  @override
  Future<void> recordError(
      dynamic exception,
      StackTrace? stack, {
        dynamic reason,
        Iterable<DiagnosticsNode> information = const [],
        bool? printDetails,
        bool fatal = false,
      }) =>
      _crashlytics.recordError(
        exception,
        stack,
        reason: reason,
        information: information,
        printDetails: printDetails,
        fatal: fatal,
      );
}

class CrashlyticsFake implements ICrashlytics {
  @override
  Future<void> recordFlutterError(FlutterErrorDetails flutterErrorDetails) async {}

  @override
  Future<void> recordError(
      dynamic exception,
      StackTrace? stack, {
        dynamic reason,
        Iterable<DiagnosticsNode> information = const [],
        bool? printDetails,
        bool fatal = false,
      }) async {}
}
