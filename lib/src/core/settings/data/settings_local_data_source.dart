import 'package:shared_preferences/shared_preferences.dart';

abstract class ISettingsLocalDataSource {
  Set<String> getKeys();

  Object? get(String key);

  bool? getBool(String key);

  int? getInt(String key);

  double? getDouble(String key);

  String? getString(String key);

  bool containsKey(String key);

  List<String>? getStringList(String key);

  Future<void> setBool(String key, bool value);

  Future<void> setInt(String key, int value);

  Future<void> setDouble(String key, double value);

  Future<void> setString(String key, String value);

  Future<void> setStringList(String key, List<String> value);

  Future<bool> remove(String key);

  Future<bool> clear();

  Future<void> reload();
}

class SettingsLocalDataSource implements ISettingsLocalDataSource {
  final SharedPreferences _preferences;

  SettingsLocalDataSource({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  @override
  Set<String> getKeys() => _preferences.getKeys();

  @override
  Object? get(String key) => _preferences.get(key);

  @override
  bool? getBool(String key) => _preferences.getBool(key);

  @override
  int? getInt(String key) => _preferences.getInt(key);

  @override
  double? getDouble(String key) => _preferences.getDouble(key);

  @override
  String? getString(String key) => _preferences.getString(key);

  @override
  bool containsKey(String key) => _preferences.containsKey(key);

  @override
  List<String>? getStringList(String key) => _preferences.getStringList(key);

  @override
  Future<void> setBool(String key, bool value) => _preferences.setBool(key, value);

  @override
  Future<void> setInt(String key, int value) => _preferences.setInt(key, value);

  @override
  Future<void> setDouble(String key, double value) => _preferences.setDouble(key, value);

  @override
  Future<void> setString(String key, String value) => _preferences.setString(key, value);

  @override
  Future<void> setStringList(String key, List<String> value) => _preferences.setStringList(key, value);

  @override
  Future<bool> remove(String key) => _preferences.remove(key);

  @override
  Future<bool> clear() => _preferences.clear();

  @override
  Future<void> reload() => _preferences.reload();
}
