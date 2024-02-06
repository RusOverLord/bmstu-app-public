abstract class EnumConverter<T> {
  String enumToString(T value);

  T enumFromString(String value);
}

abstract class EnumConverterImpl<T> implements EnumConverter<T> {
  const EnumConverterImpl();

  Map<T, String> get values;

  @override
  String enumToString(T type) => values[type]!;

  @override
  T enumFromString(String string) {
    return values.keys.firstWhere(
      (element) => values[element] == string,
      orElse: () => throw const UnknownEnumTypeException(),
    );
  }
}

class UnknownEnumTypeException implements Exception {
  const UnknownEnumTypeException();
}
