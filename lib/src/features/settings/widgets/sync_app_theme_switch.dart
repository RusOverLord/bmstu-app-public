import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/core/widgets/standard_switch.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class SyncAppThemeSwitch extends ConsumerWidget {
  const SyncAppThemeSwitch({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isSyncPlatform = ThemeScope.watch(context).isSyncPlatform;

    return StandardSwitch(
      value: isSyncPlatform,
      text: 'Тема задаётся системой',
      prefixIcon: StandardIcons.system_theme,
      onTap: () => ThemeScope.switchSyncPlatform(context),
    );
  }
}
