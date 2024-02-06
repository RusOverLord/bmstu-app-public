import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/data/settings_local_data_source.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';

const _appSettingsVersion = 4;

class SettingsMigratorLocalDataSource extends SettingsAccessor {
  SettingsMigratorLocalDataSource({
    required ISettingsLocalDataSource settings,
  }) : super(settings);

  bool get isLastVersion => appSettingsVersion.value == _appSettingsVersion;

  late final appSettingsVersion = $IntDefault(_appSettingsVersionKey, () {
    final firstOpen = this.firstOpen.value;

    if (firstOpen != null && !firstOpen) {
      return 1;
    }

    return _appSettingsVersion;
  }());

  late final userType = $Enum(_userTypeKey, UserType.values);

  // late final groupUuid = $String(_groupUuidKey);
  //
  // late final mainScheduleUuid = $String(_mainScheduleUuidKey);

  /// Устаревшие ключи
  late final firstOpen = $Bool(_firstOpenKey);

  late final covidCertificateStatus = $String(covidCertificateStatusKey);

  late final issuedAt = $String(issuedAtKey);

  late final qrUrl = $String(qrUrlKey);
}

const _appSettingsVersionKey = 'app_settings_version';

const _userTypeKey = 'settings_user_user_type';
// const _groupUuidKey = 'settings_user_group_uuid';
// const _mainScheduleUuidKey = 'schedule_main_schedule_uuid';

/// Устаревшие ключи
const _firstOpenKey = 'first_open';
const _covidCertificatePrefix = 'covid_certificate_';
const covidCertificateStatusKey = _covidCertificatePrefix + 'status';
const issuedAtKey = _covidCertificatePrefix + 'issued_at';
const qrUrlKey = _covidCertificatePrefix + 'qr_url';
