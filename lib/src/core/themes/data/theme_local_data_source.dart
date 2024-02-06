import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/themes/models/app_theme.dart';

abstract class IThemeLocalDataSource {
  AppTheme? get appTheme;

  Future<void> setAppTheme(AppTheme value);

  bool get syncAppTheme;

  Future<void> setSyncAppTheme(bool value);
}

class ThemeLocalDataSource implements IThemeLocalDataSource {
  final ISettingsLocalDataSource _settings;

  late final _appTheme = SettingString(_settings, _appThemeKey);
  late final _syncAppTheme = SettingWithDefault(SettingBool(_settings, _syncAppThemeKey), _syncAppThemeDefault);

  ThemeLocalDataSource({
    required ISettingsLocalDataSource settings,
  }) : _settings = settings;

  @override
  AppTheme? get appTheme {
    final value = _appTheme.value;

    if (value == null) {
      return null;
    }

    return AppTheme.values.byName(value);
  }

  @override
  Future<void> setAppTheme(AppTheme value) => _appTheme.updateValue(value.name);

  @override
  bool get syncAppTheme => _syncAppTheme.value;

  @override
  Future<void> setSyncAppTheme(bool value) => _syncAppTheme.updateValue(value);
}

const _settingsPrefix = 'settings_';
const _appThemeKey = _settingsPrefix + 'app_theme';
const _syncAppThemeKey = _settingsPrefix + 'sync_app_theme';
const _syncAppThemeDefault = true;
