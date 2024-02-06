import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule_event_bus_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/favorites_switcher_bloc_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_bloc_scope.dart';
import 'package:flutter/material.dart';

@immutable
class ScheduleAppBarDialog extends StatelessWidget with StandardAppBarSizeMixin {
  const ScheduleAppBarDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final whomName = ScheduleBlocScope.watch(context).schedule?.whom.nameView ?? '';

    return FavoritesSwitcherBlocScope(
      child: Builder(
        builder: (context) {
          return StandardAppBar.title(
            title: whomName,
            action: const FavoriteIcon(),
          );
        },
      ),
    );
  }
}

@immutable
class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.appBarTheme;
    final isFavorite = FavoritesSwitcherBlocScope.watch(context).isFavorite;
    final schedule = ScheduleBlocScope.watch(context).schedule;

    if (isFavorite == null || schedule == null) {
      return const SizedBox.shrink();
    }

    return AppBarAction(
      onTap: () => ScheduleEventBusScope.switchFavorite(
        context,
        schedule: schedule,
        isFavorite: !isFavorite,
      ),
      child: isFavorite
          ? Icon(
              StandardIcons.change_favorite,
              color: theme.selectedFavoriteColor,
            )
          : Icon(
              StandardIcons.favorites,
              color: theme.unselectedFavoriteColor,
            ),
    );
  }
}
