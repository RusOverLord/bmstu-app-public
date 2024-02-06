import 'package:bbmstu_app/src/core/logger.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';

import 'settings_migrator_local_data_source.dart';

class SettingsMigrator {
  final SettingsMigratorLocalDataSource _local;

  const SettingsMigrator({
    required SettingsMigratorLocalDataSource local,
  })  : _local = local;

  Future<void> migrate() async {
    if (_local.isLastVersion) {
      return;
    }

    var appSettingsVersion = _local.appSettingsVersion.value;
    l.i('appSettingsVersion: $appSettingsVersion');

    if (appSettingsVersion <= 1) {
      await _migrateTo2();
    }

    /// миграция 3 удалена, так как дублирует 4

    if (appSettingsVersion <= 3) {
      await _migrateTo4();
    }

    /// TODO: удалить mainScheduleUuid если пустая строка
    /// если отличается от groupUuid, то указать что десинхронизован
  }

  Future<void> _updateSettingsVersion(int version) async {
    await _local.appSettingsVersion.updateValue(version);
    l.i('Migrate app settings to version $version');
  }

  Future<void> _migrateTo2() async {
    final firstOpen = _local.firstOpen.value;

    if (firstOpen != null && !firstOpen) {
      await _local.userType.updateValue(UserType.student);
    }

    await _updateSettingsVersion(2);
  }

  Future<void> _migrateTo4() async {
    await _local.covidCertificateStatus.delete();
    await _updateSettingsVersion(4);
  }
}
