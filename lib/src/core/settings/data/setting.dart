import 'package:bbmstu_app/src/core/settings/data/settings_local_data_source.dart';

typedef SettingDefault<T> = ISetting<T, T>;

class SettingsAccessor {
  final ISettingsLocalDataSource _store;

  SettingsAccessor(this._store);

  SettingBool $Bool(String key) => SettingBool(_store, key);

  SettingDefault<bool> $BoolDefault(String key, bool _default) =>
      SettingWithDefault(SettingBool(_store, key), _default);

  SettingInt $Int(String key) => SettingInt(_store, key);

  SettingDefault<int> $IntDefault(String key, int _default) => SettingWithDefault(SettingInt(_store, key), _default);

  SettingDouble $Double(String key) => SettingDouble(_store, key);

  SettingDefault<double> $DoubleDefault(String key, double _default) =>
      SettingWithDefault(SettingDouble(_store, key), _default);

  SettingString $String(String key) => SettingString(_store, key);

  SettingDefault<String> $StringDefault(String key, String _default) =>
      SettingWithDefault(SettingString(_store, key), _default);

  SettingListString $ListString(String key) => SettingListString(_store, key);

  SettingDefault<List<String>> $ListStringDefault(String key, List<String> _default) =>
      SettingWithDefault(SettingListString(_store, key), _default);

  SettingEnum<T> $Enum<T extends Enum>(String key, Iterable<T> values) => SettingEnum<T>(_store, key, values);

  SettingDefault<T> $EnumDefault<T extends Enum>(String key, Iterable<T> values, T _default) =>
      SettingWithDefault(SettingEnum(_store, key, values), _default);
}

abstract class ISetting<Get, Set> {
  Get get value;

  Future<void> updateValue(Set value);

  Future<void> delete();
}

class SettingWithDefault<T> implements ISetting<T, T> {
  final ISetting<T?, T> _setting;
  final T _default;

  const SettingWithDefault(this._setting, this._default);

  @override
  T get value => _setting.value ?? _default;

  @override
  Future<void> updateValue(T value) => _setting.updateValue(value);

  @override
  Future<void> delete() => _setting.delete();
}

class SettingBool implements ISetting<bool?, bool> {
  final ISettingsLocalDataSource _store;
  final String key;

  const SettingBool(this._store, this.key);

  @override
  bool? get value => _store.getBool(key);

  @override
  Future<void> updateValue(bool value) => _store.setBool(key, value);

  @override
  Future<void> delete() => _store.remove(key);
}

class SettingInt implements ISetting<int?, int> {
  final ISettingsLocalDataSource _store;
  final String key;

  const SettingInt(this._store, this.key);

  @override
  int? get value => _store.getInt(key);

  @override
  Future<void> updateValue(int value) => _store.setInt(key, value);

  @override
  Future<void> delete() => _store.remove(key);
}

class SettingDouble implements ISetting<double?, double> {
  final ISettingsLocalDataSource _store;
  final String key;

  const SettingDouble(this._store, this.key);

  @override
  double? get value => _store.getDouble(key);

  @override
  Future<void> updateValue(double value) => _store.setDouble(key, value);

  @override
  Future<void> delete() => _store.remove(key);
}

class SettingString implements ISetting<String?, String> {
  final ISettingsLocalDataSource _store;
  final String key;

  const SettingString(this._store, this.key);

  @override
  String? get value => _store.getString(key);

  @override
  Future<void> updateValue(String value) => _store.setString(key, value);

  @override
  Future<void> delete() => _store.remove(key);
}

class SettingListString implements ISetting<List<String>?, List<String>> {
  final ISettingsLocalDataSource _store;
  final String key;

  const SettingListString(this._store, this.key);

  @override
  List<String>? get value => _store.getStringList(key);

  @override
  Future<void> updateValue(List<String> value) => _store.setStringList(key, value);

  @override
  Future<void> delete() => _store.remove(key);
}

class SettingEnum<T extends Enum> implements ISetting<T?, T> {
  final ISettingsLocalDataSource _store;
  final String key;
  final Iterable<T> _values;

  const SettingEnum(this._store, this.key, this._values);

  @override
  T? get value {
    final value = _store.getString(key);

    if (value == null) {
      return null;
    }

    return _values.byName(value);
  }

  @override
  Future<void> updateValue(T value) => _store.setString(key, value.name);

  @override
  Future<void> delete() => _store.remove(key);
}
