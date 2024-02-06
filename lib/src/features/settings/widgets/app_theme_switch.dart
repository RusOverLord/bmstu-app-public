import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/core/widgets/standard_switch.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class AppThemeSwitch extends ConsumerWidget {
  const AppThemeSwitch({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isDark = context.theme.isDark;
    
    return _AppThemeSwitchIgnorePointer(
      child: StandardSwitch(
        value: isDark,
        text: 'Включить тёмную тему',
        prefixIcon: isDark ? StandardIcons.dark_theme : StandardIcons.light_theme,
        onTap: () => ThemeScope.switchTheme(context),
      ),
    );
  }
}

@immutable
class _AppThemeSwitchIgnorePointer extends ConsumerWidget {
  final Widget child;

  const _AppThemeSwitchIgnorePointer({
    Key? key,
    required this.child,
  })  : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isSyncPlatform = ThemeScope.watch(context).isSyncPlatform;

    return IgnorePointer(
      ignoring: isSyncPlatform,
      child: Opacity(
        opacity: isSyncPlatform ? 0.6 : 1.0,
        child: child,
      ),
    );
  }
}
