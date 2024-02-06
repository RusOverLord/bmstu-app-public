import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:bbmstu_app/src/features/home/widgets/home_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule_event_bus_scope.dart';
import 'package:bbmstu_app/src/features/search/search.dart';
import 'package:bbmstu_app/src/features/settings/widgets/user_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/settings/widgets/settings_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_app_button.dart';
import 'app_theme_switch.dart';
import 'settings_app_bar.dart';
import 'sync_app_theme_switch.dart';

@immutable
class SettingsScreen extends StatelessWidget {
  static double iconSize = 22 * devScale;

  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SettingsAppBar(),
      body: SettingsListView(
        children: [
          Indent.vertical(15 * devScale),
          const UserBuilder(),
          Builder(
            builder: (context) {
              final userType = AuthorizationScope.watchUserType(context);
              final isAuthorized = AuthorizationScope.watchIsAuthorized(context);
              return StandardListRoundedWrap(
                children: [
                  if (userType.isStudent)
                    SettingsItemView(
                      text: 'Сменить основную группу',
                      icon: StandardIcons.change_group,
                      onTap: () => changeMainSchedule(context),
                    ),
                  SettingsItemView(
                    text: 'Обратная связь',
                    icon: StandardIcons.feedback,
                    onTap: () => showFeedback(context),
                  ),
                  if (isAuthorized)
                    SettingsItemView(
                      text: 'Выйти',
                      icon: StandardIcons.logout,
                      onTap: () => logout(context),
                    ),
                ],
              );
            },
          ),
          Indent.vertical(20 * devScale),
          const StandardListRoundedWrap(
            children: [
              SyncAppThemeSwitch(),
              AppThemeSwitch(),
            ],
          ),
          Indent.vertical(20 * devScale),
          const AboutAppButton(),
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) => AuthorizationScope.logout(context);

  Future<void> showFeedback(BuildContext context) async {
    final vkGroupUrl = RemoteSettingsScope.readVkGroupUrl(context);

    if (await canLaunch(vkGroupUrl)) {
      await launch(vkGroupUrl, forceWebView: false);
    }
  }

  Future<void> changeMainSchedule(BuildContext context) async {
    final result = await showSearchDialog(context);
    result.mapOrNull(
      found: (found) {
        final currentMainScheduleUuid = AuthorizationScope.readMainScheduleUuid(context);
        AuthorizationScope.updateMainScheduleUuid(context, mainScheduleUuid: found.scheduleUuid);

        if (currentMainScheduleUuid != null) {
          ScheduleEventBusScope.deleteSchedule(context, uuid: currentMainScheduleUuid);
        }

        HomeScope.showMain(context);
      },
    );
  }
}
