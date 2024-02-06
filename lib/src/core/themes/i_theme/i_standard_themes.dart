import 'package:bbmstu_app/src/core/themes/widgets/colors_pallete.dart';
import 'package:bbmstu_app/src/core/themes/widgets/text_theme_properties.dart';
import 'package:flutter/material.dart';

abstract class IStandardThemes {
  const IStandardThemes();

  _SwitchTheme get switchTheme;

  _ButtonTheme get buttonTheme;

  _TimePickerTheme get timePickerTheme;

  _TabBarTheme get tabBarTheme;
}

class StandardDarkThemes implements IStandardThemes {
  const StandardDarkThemes();

  @override
  _SwitchTheme get switchTheme => const StandardSwitchDarkTheme();

  @override
  _ButtonTheme get buttonTheme => const StandardButtonDarkTheme();

  @override
  _TimePickerTheme get timePickerTheme => const StandardTimePickerDarkTheme();

  @override
  _TabBarTheme get tabBarTheme => const StandardTabBarDarkTheme();
}

class StandardLightThemes implements IStandardThemes {
  const StandardLightThemes();

  @override
  _SwitchTheme get switchTheme => const StandardSwitchLightTheme();

  @override
  _ButtonTheme get buttonTheme => const StandardButtonLightTheme();

  @override
  _TimePickerTheme get timePickerTheme => const StandardTimePickerLightTheme();

  @override
  _TabBarTheme get tabBarTheme => const StandardTabBarLightTheme();
}

mixin StandardBackDark {
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;
}

mixin StandardBackLight {
  Color get backgroundColor => ColorsPalette.BACK;
}

abstract class _SwitchTheme {
  const _SwitchTheme();

  TextStyle get textStyle;

  Color get iconColor;

  Color get activeColor => ColorsPalette.BLUE_FROM_SITE;
}

class StandardSwitchDarkTheme extends _SwitchTheme {
  const StandardSwitchDarkTheme();

  @override
  Color get iconColor => ColorsPalette.WHITE_TEXT_APPLE;

  @override
  TextStyle get textStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.bold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );
}

class StandardSwitchLightTheme extends _SwitchTheme {
  const StandardSwitchLightTheme();

  @override
  Color get iconColor => ColorsPalette.BLUE_FROM_SITE;

  @override
  TextStyle get textStyle => const TextStyle(
        fontSize: 15,
        color: ColorsPalette.BLUE_FROM_SITE,
        fontWeight: TextThemeProperties.bold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );
}

abstract class _ButtonTheme {
  const _ButtonTheme();

  Color get backgroundColor;

  Color get splashColor => const Color.fromRGBO(158, 158, 158, 0.3);

  TextStyle get captionTextStyle;

  TextStyle get additionalStyle;

  Color get iconColor;
}

class StandardButtonDarkTheme extends _ButtonTheme {
  const StandardButtonDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  @override
  TextStyle get captionTextStyle => const TextStyle(
        fontSize: 18,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.bold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get additionalStyle => const TextStyle(
        fontSize: 14,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.semiBold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  Color get iconColor => ColorsPalette.WHITE_TEXT_APPLE;
}

class StandardButtonLightTheme extends _ButtonTheme {
  const StandardButtonLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  TextStyle get captionTextStyle => const TextStyle(
        fontSize: 18,
        color: ColorsPalette.BLUE_FROM_SITE,
        fontWeight: TextThemeProperties.bold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  TextStyle get additionalStyle => const TextStyle(
        fontSize: 14,
        color: ColorsPalette.BLUE_FROM_SITE,
        fontWeight: TextThemeProperties.semiBold,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );

  @override
  Color get iconColor => ColorsPalette.BLUE_FROM_SITE;
}

abstract class _TimePickerTheme {
  const _TimePickerTheme();

  TextStyle get textStyle;
}

class StandardTimePickerDarkTheme implements _TimePickerTheme {
  const StandardTimePickerDarkTheme();

  @override
  TextStyle get textStyle => const TextStyle(
        fontSize: 21,
        letterSpacing: -0.6,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontWeight: TextThemeProperties.regular,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );
}

class StandardTimePickerLightTheme implements _TimePickerTheme {
  const StandardTimePickerLightTheme();

  @override
  TextStyle get textStyle => const TextStyle(
        fontSize: 21,
        letterSpacing: -0.6,
        color: ColorsPalette.TEXT,
        fontWeight: TextThemeProperties.regular,
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
      );
}

abstract class _TabBarTheme {
  ///[Активный текст]
  TextStyle get activeStyle;

  ///[Неактивный текст]
  TextStyle get inactiveStyle;

  ///[Фон активной иконки]
  Color get activeBackground;

  ///[Фон неактивной иконки]
  Color get inactiveBackground;

  ///[Граница и разделитель]
  Color get borderColor;
}

class StandardTabBarDarkTheme implements _TabBarTheme {
  const StandardTabBarDarkTheme();

  ///[Активный текст]
  @override
  TextStyle get activeStyle => const TextStyle(
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontSize: 12,
        height: 1.0,
        fontWeight: TextThemeProperties.bold,
      );

  ///[Неактивный текст]
  @override
  TextStyle get inactiveStyle => const TextStyle(
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
        color: ColorsPalette.WHITE_TEXT_APPLE,
        fontSize: 12,
        height: 1.0,
        fontWeight: TextThemeProperties.bold,
      );

  ///[Фон активной иконки]
  @override
  Color get activeBackground => ColorsPalette.BLUE_TEXT_APPLE;

  ///[Фон неактивной иконки]
  @override
  Color get inactiveBackground => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  ///[Граница и разделитель]
  @override
  Color get borderColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;
}

class StandardTabBarLightTheme implements _TabBarTheme {
  const StandardTabBarLightTheme();

  ///[Активный текст]
  @override
  TextStyle get activeStyle => const TextStyle(
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
        color: ColorsPalette.BACK,
        fontSize: 12,
        height: 1.0,
        fontWeight: TextThemeProperties.bold,
      );

  ///[Неактивный текст]
  @override
  TextStyle get inactiveStyle => const TextStyle(
        fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
        color: ColorsPalette.GRAY,
        fontSize: 12,
        height: 1.0,
        fontWeight: TextThemeProperties.bold,
      );

  ///[Фон активной иконки]
  @override
  Color get activeBackground => ColorsPalette.BLUE_FROM_SITE;

  ///[Фон неактивной иконки]
  @override
  Color get inactiveBackground => ColorsPalette.WHITE_TEXT_APPLE;

  ///[Граница и разделитель]
  @override
  Color get borderColor => ColorsPalette.GRAY;
}
