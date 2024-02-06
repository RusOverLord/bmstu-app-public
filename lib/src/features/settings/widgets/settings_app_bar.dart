import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/features/home/widgets/home_scope.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


@immutable
class SettingsAppBar extends ConsumerWidget with StandardAppBarSizeMixin {
  const SettingsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final user = AuthorizationScope.watchUser(context);

    if (user != null) {
      return StandardAppBar.title(
        title: 'Меню',
      );
    }

    return StandardAppBar.title(
      title: 'Меню',
      action: IconAction(
        onTap: () => login(context),
        icon: StandardIcons.login,
      ),
    );
  }

  Future<void> login(BuildContext context) async {
    final user = await AuthorizationScope.getUserOrLogin(context);

    if (user == null) {
      return;
    }

    HomeScope.showMain(context);
  }
}
