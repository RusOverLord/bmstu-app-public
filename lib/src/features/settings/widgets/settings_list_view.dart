import 'package:bbmstu_app/src/core/widgets/broadcaster_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/features/settings/widgets/settings_screen.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsListView extends StatelessWidget {
  final List<Widget> children;

  const SettingsListView({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BroadcasterListView<SettingsScreen>(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 20 * devScale,
          left: 20 * devScale,
          right: 20 * devScale,
        ),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}

class SettingsItemView extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const SettingsItemView({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.settingsTheme;
    return StandardButton.iconTextNavigate(
      caption: text,
      captionStyle: theme.settingTextStyle,
      leftIcon: icon,
      onTap: onTap,
    );
  }
}
