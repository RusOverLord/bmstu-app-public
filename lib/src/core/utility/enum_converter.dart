abstract class IEnumConverter<T> {
  String enumToString(T value);

  T enumFromString(String value);
}

abstract class EnumConverter<T> implements IEnumConverter<T> {
  const EnumConverter();

  Map<T, String> get values;

  @override
  String enumToString(T type) {
    return values[type]!;
  }

  @override
  T enumFromString(String string) {
    return values.keys.firstWhere(
      (element) => values[element] == string,
      orElse: () => throw Exception('Unknown enum value type'),
    );
  }
}
