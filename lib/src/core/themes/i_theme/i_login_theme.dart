import 'package:flutter/material.dart';
import '../widgets/colors_pallete.dart';
import '../widgets/text_theme_properties.dart';

abstract class ILoginTheme {
  const ILoginTheme();

  ILoadingLoginTheme get loadingLoginTheme;

  FailedLoginTheme get failedLoginTheme => FailedLoginTheme();

  IDialogLoginTheme get dialogLoginTheme;
}

class LoginLightTheme extends ILoginTheme {
  const LoginLightTheme();

  @override
  ILoadingLoginTheme get loadingLoginTheme => const LoadingLoginLightTheme();

  @override
  IDialogLoginTheme get dialogLoginTheme => const DialogLoginLightTheme();
}

class LoginDarkTheme extends ILoginTheme {
  const LoginDarkTheme();

  @override
  ILoadingLoginTheme get loadingLoginTheme => const LoadingLoginDarkTheme();

  @override
  IDialogLoginTheme get dialogLoginTheme => const DialogLoginDarkTheme();
}

abstract class ILoadingLoginTheme {
  const ILoadingLoginTheme();

  TextStyle get cancelTextStyle;
}

class LoadingLoginLightTheme implements ILoadingLoginTheme {
  const LoadingLoginLightTheme();

  @override
  TextStyle get cancelTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.GRAY,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class LoadingLoginDarkTheme implements ILoadingLoginTheme {
  const LoadingLoginDarkTheme();

  @override
  TextStyle get cancelTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.GRAY_2,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

class FailedLoginTheme {

  TextStyle get messageTextStyle => const TextStyle(
    fontSize: 15,
    color: ColorsPalette.COLOR_255_69_58_1,
    fontWeight: TextThemeProperties.medium,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );

  TextStyle get buttonTextStyle => const TextStyle(
    fontSize: 17,
    color: ColorsPalette.BLUE_FROM_SITE,
    fontWeight: TextThemeProperties.regular,
    fontFamily: TextThemeProperties.FONT_FAMILY_ROBOTO,
  );
}

abstract class IDialogLoginTheme {
  const IDialogLoginTheme();

  Color get backgroundColor;

  Color get dividerColor => ColorsPalette.GG_CENTER;
}

class DialogLoginLightTheme extends IDialogLoginTheme {
  const DialogLoginLightTheme();

  @override
  Color get backgroundColor => ColorsPalette.WHITE_TEXT_APPLE;
}

class DialogLoginDarkTheme extends IDialogLoginTheme {
  const DialogLoginDarkTheme();

  @override
  Color get backgroundColor => ColorsPalette.DARK_GRAY_FOR_BLOCK_APPLE;
}
