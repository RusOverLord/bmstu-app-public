import 'package:bbmstu_app/src/core/utility/enum_converter.dart';

enum Language {
  ruRU,
  enUS,
}

extension LanguageConverterExtension on Language {
  String enumToString() => const LanguageConverter().enumToString(this);
}

class LanguageConverter extends EnumConverter<Language> {
  const LanguageConverter();

  @override
  Map<Language, String> get values => <Language, String>{
        Language.ruRU: 'ru-RU',
        Language.enUS: 'en-US',
      };
}
