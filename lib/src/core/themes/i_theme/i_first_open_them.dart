import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class IFirstOpenTheme {
  ///[Кто вы?]
  TextStyle get whoAreYouTextStyle;

  ///[Я студент, Я сотрудник]
  TextStyle get iAmTextStyle;

  ///[Пропустить]
  TextStyle get skipTextStyle;

  ///[Анимированные круги внизу экрана]
  Color get animatedCirclesColor;

  ///[Крестик для закрытия]
  Color get closeColor;

  IIntroTheme get introTheme;

  IStartDatingTheme get startDatingTheme;
}

class FirstOpenLightTheme implements IFirstOpenTheme {
  const FirstOpenLightTheme();

  @override
  TextStyle get whoAreYouTextStyle => const TextStyle(
    fontSize: 32,
    color: ColorsPalette.COLOR_41_44_51_1,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get iAmTextStyle => const TextStyle(
    fontSize: 26,
    color: ColorsPalette.COLOR_41_44_51_1,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get skipTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.TEXT0,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get animatedCirclesColor => ColorsPalette.GG_CENTER;

  @override
  Color get closeColor => ColorsPalette.TEXT0;

  @override
  IIntroTheme get introTheme => const IntroLightTheme();

  @override
  IStartDatingTheme get startDatingTheme => const StartDatingLightTheme();
}

class FirstOpenDarkTheme implements IFirstOpenTheme {
  const FirstOpenDarkTheme();

  @override
  TextStyle get whoAreYouTextStyle => const TextStyle(
    fontSize: 32,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get iAmTextStyle => const TextStyle(
    fontSize: 26,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get skipTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.GRAY_TEXT,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get animatedCirclesColor => ColorsPalette.WHITE_TEXT_APPLE;

  @override
  Color get closeColor => ColorsPalette.GRAY;

  @override
  IIntroTheme get introTheme => const IntroDarkTheme();

  @override
  IStartDatingTheme get startDatingTheme => const StartDatingDarkTheme();
}

abstract class IIntroTheme {
  ///[Заголовок]
  TextStyle get textStyle1;

  ///[Описание]
  TextStyle get textStyle2;
}

class IntroLightTheme implements IIntroTheme {
  const IntroLightTheme();

  ///[Заголовок]
  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 26,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  ///[Описание]
  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 18,
    height: 1.16,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class IntroDarkTheme implements IIntroTheme {
  const IntroDarkTheme();

  ///[Заголовок]
  @override
  TextStyle get textStyle1 => const TextStyle(
    fontSize: 26,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  ///[Описание]
  @override
  TextStyle get textStyle2 => const TextStyle(
    fontSize: 18,
    height: 1.16,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class IStartDatingTheme {
  ///[МГТУ им. Н. Э. Баумана]
  TextStyle get bmstuLabelTextStyle;

  ///[190 лет великой истории]
  TextStyle get bmstuSubLabelTextStyle;

  ///['Войти через ЭУ']
  TextStyle get loginTextStyle;

  ///['- или -']
  TextStyle get orTextStyle;

  ///['Найти своё расписание']
  TextStyle get searchTextStyle;

  ///[Войти через ЭУ]
  Color get loginColor;

  ///[Найти своё расписание]
  Color get searchColor;
}

class StartDatingLightTheme implements IStartDatingTheme {
  const StartDatingLightTheme();

  @override
  TextStyle get bmstuLabelTextStyle => const TextStyle(
    fontSize: 20,
    color: ColorsPalette.COLOR_41_44_51_1,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get bmstuSubLabelTextStyle => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.COLOR_41_44_51_1,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get loginTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get orTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.w400,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get searchTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.GRAY_2,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get loginColor => ColorsPalette.BLUE_FROM_SITE;

  @override
  Color get searchColor => ColorsPalette.GG_NEAR;
}

class StartDatingDarkTheme implements IStartDatingTheme {
  const StartDatingDarkTheme();

  @override
  TextStyle get bmstuLabelTextStyle => const TextStyle(
    fontSize: 20,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get bmstuSubLabelTextStyle => const TextStyle(
    fontSize: 14,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w500,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get loginTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get orTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w400,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  TextStyle get searchTextStyle => const TextStyle(
    fontSize: 18,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.w700,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  @override
  Color get loginColor => ColorsPalette.BLUE_TEXT_APPLE;

  @override
  Color get searchColor => ColorsPalette.DARK_GRAY_APPLE;
}
