import 'dart:ui';

import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/themes/data/theme_local_data_source.dart';
import 'package:bbmstu_app/src/core/themes/data/theme_repository.dart';
import 'package:bbmstu_app/src/core/themes/domain/theme_bloc.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_theme.dart';
import 'package:bbmstu_app/src/core/themes/models/app_theme.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';

typedef _Bloc = ThemeBloc;

typedef _State = ThemeState;

typedef _Event = ThemeEvent;

typedef _Value = ITheme;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = ValueScope<_State>;

typedef _ValueScope = ValueScope<_Value>;

@immutable
class ThemeScope extends StatefulWidget {
  final Widget child;

  const ThemeScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<ThemeScope> createState() => _ThemeScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Value watchTheme(BuildContext context) => ValueScope.watch<_Value>(context);

  static _Value readTheme(BuildContext context) => ValueScope.read<_Value>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  static void switchTheme(BuildContext context) => readBloc(context).add(const ThemeEvent.switchTheme());

  /// изменяем синхронизацию темы с платформой
  /// если текущее состояние - синхронизировано, то десинхронизируем,
  /// иначе - синхронизируем
  static void switchSyncPlatform(BuildContext context) {
    final isSyncPlatform = read(context).isSyncPlatform;

    if (isSyncPlatform) {
      desyncPlatform(context);
    } else {
      syncPlatform(context);
    }
  }

  /// синхронизируем тему приложения с темой платформы
  static void syncPlatform(BuildContext context) =>
      readBloc(context).add(ThemeEvent.syncPlatform(theme: _platformTheme));

  static void desyncPlatform(BuildContext context) => readBloc(context).add(const ThemeEvent.desyncPlatform());
}

class _ThemeScopeState extends State<ThemeScope> {
  late final _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc = _Bloc(
      repository: ThemeRepository(
        local: ThemeLocalDataSource(
          settings: SettingsScope.watch(context),
        ),
      ),
      platformTheme: _platformTheme,
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _bloc,
      child: _StateBuilder(
        child: widget.child,
      ),
    );
  }
}

class _StateBuilder extends StatelessWidget {
  final Widget child;

  const _StateBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<_Bloc, _Event, _State>(
      builder: (context, state) => _PlatformThemeListener(
        sync: state.isSyncPlatform,
        child: _StateScope(
          value: state,
          child: _ValueScope(
            value: state.theme.toTheme(),
            child: child,
          ),
        ),
      ),
    );
  }
}

@immutable
class _PlatformThemeListener extends StatefulWidget {
  final Widget child;
  final bool sync;

  const _PlatformThemeListener({
    Key? key,
    required this.child,
    required this.sync,
  }) : super(key: key);

  @override
  State<_PlatformThemeListener> createState() => _PlatformThemeListenerState();
}

class _PlatformThemeListenerState extends State<_PlatformThemeListener> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    /// если синхронизация не требуется, выходим из метода
    if (!widget.sync) {
      return;
    }

    ThemeScope.syncPlatform(context);
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

AppTheme get _platformTheme => window.platformBrightness.toAppTheme();

extension on AppTheme {
  ITheme toTheme() {
    switch (this) {
      case AppTheme.light:
        return const LightThemeData();
      case AppTheme.dark:
        return const DarkThemeData();
    }
  }
}

extension on Brightness {
  AppTheme toAppTheme() {
    switch (this) {
      case Brightness.dark:
        return AppTheme.dark;
      case Brightness.light:
        return AppTheme.light;
    }
  }
}

extension ThemeOfContext on BuildContext {
  ITheme get theme => ThemeScope.watchTheme(this);
}
