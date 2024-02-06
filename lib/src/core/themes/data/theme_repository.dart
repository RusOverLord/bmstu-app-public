import 'package:bbmstu_app/src/core/themes/models/app_theme.dart';

import 'theme_local_data_source.dart';

abstract class IThemeRepository {
  AppTheme? get appTheme;

  Future<void> setAppTheme(AppTheme value);

  bool get syncAppTheme;

  Future<void> setSyncAppTheme(bool value);
}

class ThemeRepository implements IThemeRepository {
  final IThemeLocalDataSource _local;

  ThemeRepository({
    required IThemeLocalDataSource local,
  })  : _local = local;

  @override
  AppTheme? get appTheme => _local.appTheme;

  @override
  Future<void> setAppTheme(AppTheme value) => _local.setAppTheme(value);

  @override
  bool get syncAppTheme => _local.syncAppTheme;

  @override
  Future<void> setSyncAppTheme(bool value) => _local.setSyncAppTheme(value);
}
