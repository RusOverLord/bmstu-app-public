import 'package:bbmstu_app/src/core/themes/widgets/colors_pallete.dart';
import 'package:bbmstu_app/src/core/themes/widgets/text_theme_properties.dart';
import 'package:flutter/material.dart';

abstract class IPersonalDataPermissionTheme {
  const IPersonalDataPermissionTheme();

  TextStyle get titleTextStyle;

  TextStyle get paragraphTextStyle;

  TextStyle get activeButtonTextStyle => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get inactiveButtonTextStyle;

  Color get activeColor => ColorsPalette.BLUE_FROM_SITE;

  Color get inactiveColor;

  Color get backgroundColor;

  Color get closeColor => ColorsPalette.DARK_GRAY;
}

class PersonalDataPermissionLightTheme extends IPersonalDataPermissionTheme {
  const PersonalDataPermissionLightTheme();

  @override
  TextStyle get titleTextStyle => const TextStyle(
    fontSize: 19.65,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w900,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get paragraphTextStyle => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w900,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get inactiveButtonTextStyle => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get inactiveColor => ColorsPalette.GG_CENTER;

  @override
  Color get backgroundColor => Colors.white;
}

class PersonalDataPermissionDarkTheme extends IPersonalDataPermissionTheme {
  const PersonalDataPermissionDarkTheme();

  @override
  TextStyle get titleTextStyle => const TextStyle(
    fontSize: 19.65,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w900,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get paragraphTextStyle => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w900,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get inactiveButtonTextStyle => const TextStyle(
    fontSize: 16,
    color: Color.fromRGBO(202, 202, 202, 1),
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get inactiveColor => const Color.fromRGBO(96, 96, 97, 1);

  @override
  Color get backgroundColor => const Color.fromRGBO(30, 30, 32, 1);
}

