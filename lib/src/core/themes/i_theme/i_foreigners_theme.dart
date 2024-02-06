import 'package:bbmstu_app/src/core/themes/widgets/colors_pallete.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_standard_themes.dart';
import 'package:bbmstu_app/src/core/themes/widgets/text_theme_properties.dart';
import 'package:flutter/material.dart';

abstract class IForeignersTheme {
  /// Основной экран 'Поддержка'
  _MainScreenTheme get mainScreenTheme;

  /// Контакты УМС
  _ContactsIRDTheme get contactsIRDTheme;

  /// Часто задаваемые вопросы
  _FAQTheme get faqTheme;
}

class ForeignersDarkTheme implements IForeignersTheme {
  const ForeignersDarkTheme();

  @override
  _MainScreenTheme get mainScreenTheme => const _MainScreenDarkTheme();

  @override
  _ContactsIRDTheme get contactsIRDTheme => const _ContactsIRDDarkTheme();

  @override
  _FAQTheme get faqTheme => const _FAQDarkTheme();
}

class ForeignersLightTheme implements IForeignersTheme {
  const ForeignersLightTheme();

  @override
  _MainScreenTheme get mainScreenTheme => const _MainScreenLightTheme();

  @override
  _ContactsIRDTheme get contactsIRDTheme => const _ContactsIRDLightTheme();

  @override
  _FAQTheme get faqTheme => const _FAQLightTheme();
}

const _titleTextStyle = TextStyle(
  fontSize: 18,
  color: ColorsPalette.BLUE_FROM_SITE,
  fontWeight: TextThemeProperties.bold,
  fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
);

const _paragraphDarkTextStyle = TextStyle(
  fontSize: 15,
  color: ColorsPalette.WHITE_TEXT_APPLE,
  fontWeight: TextThemeProperties.regular,
  fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
);

const _paragraphLightTextStyle = TextStyle(
  fontSize: 15,
  color: ColorsPalette.TEXT,
  fontWeight: TextThemeProperties.regular,
  fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
);

abstract class _MainScreenTheme {
  /// Запись на приём
  /// Справки
  /// Правила миграционного учёта
  /// Медицинское страхование
  /// Контакты УМС
  TextStyle get standardParagraphTextStyle;

  /// Миграционный
  TextStyle get migrationTextStyle;

  /// Статус
  TextStyle get statusTextStyle;

  /// Осталось
  ///   /// Число дней
  TextStyle get inscriptionTextStyle;

  /// дней
  TextStyle get dayNumberTextStyle;

  /// Контакты УМС
  TextStyle get contactsTextStyle;
}

class _MainScreenDarkTheme implements _MainScreenTheme {
  const _MainScreenDarkTheme();

  @override
  TextStyle get standardParagraphTextStyle => const TextStyle(
        fontSize: 18,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.w300,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get migrationTextStyle => const TextStyle(
        fontSize: 24,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.w300,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get statusTextStyle => const TextStyle(
        fontSize: 24,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.regular,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get inscriptionTextStyle => const TextStyle(
        fontSize: 13,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.regular,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get dayNumberTextStyle => const TextStyle(
        fontSize: 54,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.medium,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get contactsTextStyle => const TextStyle(
        fontSize: 18,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.w300,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );
}

class _MainScreenLightTheme implements _MainScreenTheme {
  const _MainScreenLightTheme();

  @override
  TextStyle get standardParagraphTextStyle => const TextStyle(
        fontSize: 18,
        height: 1.0,
        color: ColorsPalette.TEXT,
        fontWeight: TextThemeProperties.w300,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get migrationTextStyle => const TextStyle(
        fontSize: 24,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.w300,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get statusTextStyle => const TextStyle(
        fontSize: 24,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.regular,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get inscriptionTextStyle => const TextStyle(
        fontSize: 13,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.regular,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get dayNumberTextStyle => const TextStyle(
        fontSize: 54,
        height: 1.0,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.medium,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get contactsTextStyle => const TextStyle(
        fontSize: 18,
        color: ColorsPalette.TEXT,
        fontWeight: TextThemeProperties.w300,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );
}

abstract class _ContactsIRDTheme {
  TextStyle get titleTextStyle;

  TextStyle get nameTextStyle;

  TextStyle get phoneTextStyle;

  TextStyle get emailTextStyle;

  TextStyle get faqTextStyle;

  Color get backgroundColor;
}

class _ContactsIRDDarkTheme with StandardBackDark implements _ContactsIRDTheme {
  const _ContactsIRDDarkTheme();

  @override
  TextStyle get titleTextStyle => _titleTextStyle;

  @override
  TextStyle get nameTextStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.medium,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get phoneTextStyle => _paragraphDarkTextStyle;

  @override
  TextStyle get emailTextStyle => _paragraphDarkTextStyle;

  @override
  TextStyle get faqTextStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.COLOR_121_131_154_1,
        fontWeight: TextThemeProperties.medium,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
        decoration: TextDecoration.underline,
      );
}

class _ContactsIRDLightTheme
    with StandardBackLight
    implements _ContactsIRDTheme {
  const _ContactsIRDLightTheme();

  @override
  TextStyle get titleTextStyle => _titleTextStyle;

  @override
  TextStyle get nameTextStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.TEXT,
        fontWeight: TextThemeProperties.medium,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get phoneTextStyle => _paragraphLightTextStyle;

  @override
  TextStyle get emailTextStyle => _paragraphLightTextStyle;

  @override
  TextStyle get faqTextStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.COLOR_121_131_154_1,
        fontWeight: TextThemeProperties.medium,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
        decoration: TextDecoration.underline,
      );
}

abstract class _FAQTheme {
  TextStyle get titleTextStyle;

  TextStyle get paragraphTextStyle;
}

class _FAQDarkTheme with StandardBackDark implements _FAQTheme {
  const _FAQDarkTheme();

  @override
  TextStyle get titleTextStyle => _titleTextStyle;

  @override
  TextStyle get paragraphTextStyle => _paragraphDarkTextStyle;
}

class _FAQLightTheme with StandardBackLight implements _FAQTheme {
  const _FAQLightTheme();

  @override
  TextStyle get titleTextStyle => _titleTextStyle;

  @override
  TextStyle get paragraphTextStyle => _paragraphLightTextStyle;
}
