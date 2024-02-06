import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class IPrimitivesTheme {
  const IPrimitivesTheme();

  IAlertsTheme get alertsTheme;

  RefreshIndicatorTheme get refreshIndicatorTheme;
}

class PrimitivesLightTheme implements IPrimitivesTheme {
  const PrimitivesLightTheme();

  @override
  IAlertsTheme get alertsTheme => const AlertsLightTheme();

  @override
  RefreshIndicatorTheme get refreshIndicatorTheme =>
      const RefreshIndicatorLightTheme();
}

class PrimitivesDarkTheme implements IPrimitivesTheme {
  const PrimitivesDarkTheme();

  @override
  IAlertsTheme get alertsTheme => const AlertsDarkTheme();

  @override
  RefreshIndicatorTheme get refreshIndicatorTheme =>
      const RefreshIndicatorDarkTheme();
}

abstract class IAlertsTheme {
  const IAlertsTheme();

  TextStyle get textStyle;

  Gradient get backgroundGradient => ColorsPalette.ERROR;
}

class AlertsLightTheme extends IAlertsTheme {
  const AlertsLightTheme();

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class AlertsDarkTheme extends IAlertsTheme {
  const AlertsDarkTheme();

  @override
  TextStyle get textStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.WHITE_TEXT_APPLE,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class RefreshIndicatorTheme {
  const RefreshIndicatorTheme();

  Color get backgroundColor;

  Color get ringColor;
}

class RefreshIndicatorLightTheme implements RefreshIndicatorTheme {
  const RefreshIndicatorLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  Color get ringColor => ColorsPalette.TEXT;
}

class RefreshIndicatorDarkTheme implements RefreshIndicatorTheme {
  const RefreshIndicatorDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;

  @override
  Color get ringColor => ColorsPalette.WHITE_TEXT_APPLE;
}