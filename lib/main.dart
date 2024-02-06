import 'dart:async';
import 'dart:ui';
import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/app_config/app_config.dart';
import 'package:bbmstu_app/src/features/home/home.dart';
import 'package:bbmstu_app/src/features/authorization/authorization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

double get devScale => _devScale;
double _devScale = 1.0;

Future<void> main() async {
  final _app = await app();
  runApp(_app);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// dont move to main! may not have time to calculate!
    _devScale = (window.physicalSize.width / window.devicePixelRatio) / 360;
    final theme = context.theme;

    Widget app = MaterialApp(
      title: 'МГТУ',
      themeMode: theme.isLight ? ThemeMode.light : ThemeMode.dark,
      theme: theme.themeOptions.themeData,
      darkTheme: theme.themeOptions.themeData,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ru'),
      builder: (context, child) =>
          _PageWrap(
            child: child,
          ),
      home: const EndOfSupportScope(
        child: UserTypeChecker(
          child: HomeScope(),
        ),
      ),
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
      ],
    );

    return platform.mapDevice(
      mobile: () => app,
      desktop: () => _DesktopContainer(child: app),
    );
  }
}

@immutable
class _DesktopContainer extends StatelessWidget {
  final Widget child;

  const _DesktopContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.fromWindow(
      child: Builder(
        builder: (context) {
          final media = MediaQuery.of(context);
          const ratio = 1 / 2;
          final width = media.size.height * ratio;
          _devScale = (width / media.devicePixelRatio) / 360 / 1.25;
          return Center(
            child: AspectRatio(
              aspectRatio: ratio,
              child: child,
            ),
          );
        },
      ),
    );
  }
}

@immutable
class _PageWrap extends StatelessWidget {
  final Widget? child;

  const _PageWrap({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: theme.themeOptions.systemUiOverlayStyle,
      child: ColoredBox(
        color: theme.backgroundColor,
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: devScale),
          child: child ?? const SizedBox(),
        ),
      ),
    );
  }
}
