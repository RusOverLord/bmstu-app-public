import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';

abstract class INetworkLocalDataSource {
  ISetting<String?, String> get baseUrl;
}

class NetworkLocalDataSource implements INetworkLocalDataSource {
  final ISettingsLocalDataSource _settings;

  @override
  late final baseUrl = SettingString(_settings, _pathOverrideKey);

  NetworkLocalDataSource({
    required ISettingsLocalDataSource settings,
  }) : _settings = settings;
}

const _settingsPrefix = 'settings_';
const _pathOverrideKey = _settingsPrefix + 'path_override';
