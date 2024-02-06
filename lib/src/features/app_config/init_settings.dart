import 'dart:async';
import 'package:bbmstu_app/src/core/settings/data/settings_migrator.dart';
import 'package:bbmstu_app/src/core/settings/data/settings_migrator_local_data_source.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<ISettingsLocalDataSource> initSettings() async {
  final settings = SettingsLocalDataSource(
    preferences: await SharedPreferences.getInstance(),
  );

  await SettingsMigrator(
    local: SettingsMigratorLocalDataSource(
      settings: settings,
    ),
  ).migrate();

  return settings;
}
