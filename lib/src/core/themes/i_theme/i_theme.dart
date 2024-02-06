import 'package:bbmstu_app/src/core/themes/i_theme/i_app_bar_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_favorites_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_first_open_them.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_foreigners_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_home_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_login_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_news_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_qr_code_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_schedule_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_search_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_settings_theme.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_standard_themes.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_theme_options.dart';
import 'package:bbmstu_app/src/core/themes/i_theme/i_primitives_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../widgets/colors_pallete.dart';
import 'i_personal_data_permission.dart';

abstract class ITheme with Diagnosticable {
  const ITheme();

  bool get isDark => this is DarkThemeData;
  bool get isLight => this is LightThemeData;

  Color get backgroundColor;

  IThemeOptions get themeOptions;
  IPrimitivesTheme get primitivesTheme;

  IAppBarTheme get appBarTheme;
  IHomeTheme get homeTheme;

  IFirstOpenTheme get firstOpenTheme;
  INewsTheme get newsTheme;
  ISearchTheme get searchTheme;
  IScheduleTheme get scheduleTheme;
  IFavoritesTheme get favoritesTheme;
  ISettingsTheme get settingsTheme;
  ILoginTheme get loginTheme;
  IForeignersTheme get foreignersTheme;
  IQrCodeTheme get qrCodeTheme;
  IPersonalDataPermissionTheme get personalDataPermissionTheme;

  IStandardThemes get standardThemes;
}

class LightThemeData extends ITheme with Diagnosticable {
  const LightThemeData();

  @override
  Color get backgroundColor => ColorsPalette.BACK;

  @override
  IThemeOptions get themeOptions => const LightThemeOptions();

  @override
  IPrimitivesTheme get primitivesTheme => const PrimitivesLightTheme();

  @override
  IAppBarTheme get appBarTheme => const AppBarLightTheme();

  @override
  IHomeTheme get homeTheme => const HomeLightTheme();

  @override
  IFirstOpenTheme get firstOpenTheme => const FirstOpenLightTheme();

  @override
  INewsTheme get newsTheme => const NewsLightTheme();

  @override
  ISearchTheme get searchTheme => const SearchLightTheme();

  @override
  IScheduleTheme get scheduleTheme => const ScheduleLightTheme();

  @override
  IFavoritesTheme get favoritesTheme => const FavoritesLightTheme();

  @override
  ISettingsTheme get settingsTheme => const SettingsLightTheme();

  @override
  ILoginTheme get loginTheme => const LoginLightTheme();

  @override
  IForeignersTheme get foreignersTheme => const ForeignersLightTheme();

  @override
  IQrCodeTheme get qrCodeTheme => const QrCodeLightTheme();

  @override
  IPersonalDataPermissionTheme get personalDataPermissionTheme => const PersonalDataPermissionLightTheme();

  @override
  IStandardThemes get standardThemes => const StandardLightThemes();
}

class DarkThemeData extends ITheme with Diagnosticable {
  const DarkThemeData();

  @override
  Color get backgroundColor => ColorsPalette.BACK_BLACK_APPLE;

  @override
  IThemeOptions get themeOptions => const DarkThemeOptions();

  @override
  IPrimitivesTheme get primitivesTheme => const PrimitivesDarkTheme();

  @override
  IAppBarTheme get appBarTheme => const AppBarDarkTheme();

  @override
  IHomeTheme get homeTheme => const HomeDarkTheme();

  @override
  IFirstOpenTheme get firstOpenTheme => const FirstOpenDarkTheme();

  @override
  INewsTheme get newsTheme => const NewsDarkTheme();

  @override
  ISearchTheme get searchTheme => const SearchDarkTheme();

  @override
  IScheduleTheme get scheduleTheme => const ScheduleDarkTheme();

  @override
  IFavoritesTheme get favoritesTheme => const FavoritesDarkTheme();

  @override
  ISettingsTheme get settingsTheme => const SettingsDarkTheme();

  @override
  ILoginTheme get loginTheme => const LoginDarkTheme();

  @override
  IForeignersTheme get foreignersTheme => const ForeignersDarkTheme();

  @override
  IQrCodeTheme get qrCodeTheme => const QrCodeDarkTheme();

  @override
  IPersonalDataPermissionTheme get personalDataPermissionTheme => const PersonalDataPermissionDarkTheme();

  @override
  IStandardThemes get standardThemes => const StandardDarkThemes();
}
