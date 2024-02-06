import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class IAppBarTheme {
  const IAppBarTheme();

  ///[Весь текст]
  TextStyle get mainTextStyle;

  ///[Сохранить в редактировании]
  TextStyle get saveTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  ///[Фон]
  Color get backgroundColor;

  ///[Разделительная черта]
  Color get dividerColor;

  ///[Кнопка навигации назад]
  Color get iconColor;

  ///[Кнопка выбранного избранного]
  Color get selectedFavoriteColor;

  ///[Кнопка не выбранного избранного]
  Color get unselectedFavoriteColor;
}

class AppBarLightTheme extends IAppBarTheme {
  const AppBarLightTheme();

  ///[Весь текст]
  @override
  TextStyle get mainTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.TEXT,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  ///[Синий тёмный, фон]
  @override
  Color get backgroundColor => ColorsPalette.BACK;

  ///[Серый, разделительная черта]
  @override
  Color get dividerColor => ColorsPalette.TEXT0;

  @override
  Color get iconColor => ColorsPalette.TEXT;

  @override
  Color get selectedFavoriteColor => ColorsPalette.BLUE_FROM_SITE;

  @override
  Color get unselectedFavoriteColor => ColorsPalette.DARK_GRAY;
}

class AppBarDarkTheme extends IAppBarTheme {
  const AppBarDarkTheme();

  ///[Весь текст]
  @override
  TextStyle get mainTextStyle => const TextStyle(
    fontSize: 21,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.bold,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  ///[Синий тёмный, фон]
  @override
  Color get backgroundColor => ColorsPalette.BACK_BLACK_APPLE;

  ///[Серый, разделительная черта]
  @override
  Color get dividerColor => ColorsPalette.GRAY_1_APPLE;

  @override
  Color get iconColor => ColorsPalette.WHITE_TEXT_APPLE;

  @override
  Color get selectedFavoriteColor => ColorsPalette.BLUE_TEXT_APPLE;

  @override
  Color get unselectedFavoriteColor => ColorsPalette.GRAY_TEXT;
}
