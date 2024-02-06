import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/colors_pallete.dart';

/// Uses for override main app [ThemeData] colors
/// ThemeData field should be passed to theme property
/// of MaterialApp in main.dart

abstract class IThemeOptions {
  ThemeData get themeData;

  ///[Set status bar color]
  SystemUiOverlayStyle get systemUiOverlayStyle;
}

class LightThemeOptions implements IThemeOptions {
  const LightThemeOptions();

  @override
  SystemUiOverlayStyle get systemUiOverlayStyle =>
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: ColorsPalette.BACK,
        systemNavigationBarColor: ColorsPalette.BACK,
        systemNavigationBarIconBrightness: Brightness.dark,
      );

  static const _darkFillColor = Colors.white;
  static const ColorScheme _colorScheme = ColorScheme(
    primary: ColorsPalette.BACK,

    /// [Синий, задаёт цвет многих теней и эффектов]
    primaryVariant: ColorsPalette.BACK,
    secondary: ColorsPalette.BACK,
    secondaryVariant: ColorsPalette.BACK,
    background: ColorsPalette.BACK,

    /// [Синий для фона]
    surface: ColorsPalette.BACK,
    onBackground: ColorsPalette.COLOR_58_83_109_1,

    /// [Синий светлее, для кнопок и т д]
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  @override
  ThemeData get themeData => ThemeData(
    colorScheme: _colorScheme,
    textTheme: textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      // textTheme: _textTheme.apply(bodyColor: _colorScheme.onPrimary),
      color: _colorScheme.background,
      iconTheme: IconThemeData(color: _colorScheme.primary),
    ),
    iconTheme: IconThemeData(color: _colorScheme.onPrimary),
    canvasColor: _colorScheme.background,
    scaffoldBackgroundColor: _colorScheme.background,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      // backgroundColor: darkColorScheme.onBackground,
      // contentTextStyle: _textTheme.subtitle1.apply(color: _darkFillColor),
    ),
  );

  static const _regular = FontWeight.w400;

  TextTheme get textTheme => const TextTheme(
    bodyText1: TextStyle(fontWeight: _regular, fontSize: 14.0),
    bodyText2: TextStyle(fontWeight: _regular, fontSize: 14.0),
  );
}

class DarkThemeOptions implements IThemeOptions {
  const DarkThemeOptions();

  @override
  SystemUiOverlayStyle get systemUiOverlayStyle =>
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: ColorsPalette.BACK_BLACK_APPLE,
        systemNavigationBarColor: ColorsPalette.BACK_BLACK_APPLE,
        systemNavigationBarIconBrightness: Brightness.light,
      );

  static const _darkFillColor = ColorsPalette.BACK_BLACK_APPLE;
  static const ColorScheme _colorScheme = ColorScheme(
    primary: ColorsPalette.BACK_BLACK_APPLE,

    /// [Синий, задаёт цвет многих теней и эффектов]
    primaryVariant: ColorsPalette.BACK_BLACK_APPLE,
    secondary: ColorsPalette.BACK_BLACK_APPLE,
    secondaryVariant: ColorsPalette.BACK_BLACK_APPLE,
    background: ColorsPalette.BACK_BLACK_APPLE,

    /// [Синий для фона]
    surface: ColorsPalette.BACK_BLACK_APPLE,
    onBackground: ColorsPalette.WHITE_TEXT_APPLE,

    /// [Синий светлее, для кнопок и т д]
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  @override
  ThemeData get themeData => ThemeData(
    textTheme: textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      // textTheme: _textTheme.apply(bodyColor: _colorScheme.onPrimary),
      color: _colorScheme.background,
      iconTheme: IconThemeData(color: _colorScheme.primary),
    ),
    iconTheme: IconThemeData(color: _colorScheme.onPrimary),
    canvasColor: _colorScheme.background,
    scaffoldBackgroundColor: _colorScheme.background,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    focusColor: Colors.transparent,
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      // backgroundColor: darkColorScheme.onBackground,
      // contentTextStyle: _textTheme.subtitle1.apply(color: _darkFillColor),
    ), colorScheme: _colorScheme.copyWith(secondary: _colorScheme.primary),
  );

  static const _regular = FontWeight.w400;

  TextTheme get textTheme => const TextTheme(
    bodyText1: TextStyle(fontWeight: _regular, fontSize: 14.0),
    bodyText2: TextStyle(fontWeight: _regular, fontSize: 14.0),
  );
}
