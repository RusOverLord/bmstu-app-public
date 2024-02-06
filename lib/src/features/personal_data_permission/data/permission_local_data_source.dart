import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/data/permission_type.dart';

abstract class IPermissionLocalDataSource {
  ISetting<bool, bool> get setting;
}

class PermissionLocalDataSource extends SettingsAccessor implements IPermissionLocalDataSource {
  final String _settingName;

  PermissionLocalDataSource({
    required ISettingsLocalDataSource settings,
    required PermissionType type,
  })  : _settingName = _settingKey(type),
        super(settings);

  static String _settingKey(PermissionType type) {
    switch (type) {
      case PermissionType.login:
        return _loginPDPKey;
    }
  }

  @override
  late final setting = $BoolDefault(_settingName, false);
}

const _prefix = 'personal_data_permission_';
const _loginPDPKey = _prefix + 'login';
/// устарел
const _covidCertificatePDPKey = _prefix + 'covid_certificate';
