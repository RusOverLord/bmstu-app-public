import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class ISettingsTheme {
  TextStyle get settingTextStyle;

  IStudentViewTheme get studentViewTheme;
  IConfirmLogoutViewTheme get confirmLogoutViewTheme;
  IAboutAppTheme get aboutAppTheme;
}

class SettingsLightTheme implements ISettingsTheme {
  const SettingsLightTheme();

  @override
  IStudentViewTheme get studentViewTheme => const StudentViewLightTheme();

  @override
  IConfirmLogoutViewTheme get confirmLogoutViewTheme =>
      const ConfirmLogoutViewLightTheme();

  @override
  IAboutAppTheme get aboutAppTheme => const AboutAppLightTheme();

  @override
  TextStyle get settingTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class SettingsDarkTheme implements ISettingsTheme {
  const SettingsDarkTheme();

  @override
  IStudentViewTheme get studentViewTheme => const StudentViewDarkTheme();

  @override
  IConfirmLogoutViewTheme get confirmLogoutViewTheme =>
      const ConfirmLogoutViewDarkTheme();

  @override
  IAboutAppTheme get aboutAppTheme => const AboutAppDarkTheme();

  @override
  TextStyle get settingTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class IStudentViewTheme {
  const IStudentViewTheme();
  /// ['Имя студента']
  TextStyle get nameTextStyle;

  /// ['Название группы']
  TextStyle get groupTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class StudentViewLightTheme extends IStudentViewTheme {
  const StudentViewLightTheme();

  @override
  TextStyle get nameTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class StudentViewDarkTheme extends IStudentViewTheme {
  const StudentViewDarkTheme();

  @override
  TextStyle get nameTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class IConfirmLogoutViewTheme {
  const IConfirmLogoutViewTheme();

  /// ['Вы уверены, что хотите выйти из своего профиля?']
  TextStyle get questionTextStyle;

  /// ['Да']
  TextStyle get confirmTextStyle;

  /// ['Нет']
  TextStyle get dismissTextStyle;

  Color get dividerColor => ColorsPalette.GG_CENTER;

  Color get backgroundColor;
}

class ConfirmLogoutViewLightTheme extends IConfirmLogoutViewTheme {
  const ConfirmLogoutViewLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  TextStyle get questionTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get confirmTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get dismissTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class ConfirmLogoutViewDarkTheme extends IConfirmLogoutViewTheme {
  const ConfirmLogoutViewDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  @override
  TextStyle get questionTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get confirmTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get dismissTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.BLUE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class IAboutAppTheme {
  Color get backgroundColor;
  Color get foregroundColor;

  /// ['О приложении']
  TextStyle get textStyle1;

  /// ['Версия']
  TextStyle get textStyle2;

  /// ['Текст согласия на обработку персональных данных']
  TextStyle get textStyle3;
}

class AboutAppLightTheme implements IAboutAppTheme {
  const AboutAppLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  Color get foregroundColor => Colors.black;

  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get textStyle3 => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class AboutAppDarkTheme implements IAboutAppTheme {
  const AboutAppDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK_BLACK_APPLE;

  @override
  Color get foregroundColor => ColorsPalette.WHITE_TEXT_APPLE;

  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get textStyle3 => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}
