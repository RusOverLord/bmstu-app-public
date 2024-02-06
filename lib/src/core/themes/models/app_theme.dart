enum AppTheme {
  light,
  dark,
}

extension AppThemeExtension on AppTheme {
  bool get isLight => this == AppTheme.light;

  bool get isDark => this == AppTheme.dark;
}
