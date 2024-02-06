import 'package:bbmstu_app/src/core/widgets/intro_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/features/authorization/authorization.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bbmstu_app/src/core/widgets/standard_loading_ring.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/app_bar/schedule_app_bar_dialog.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/app_bar/schedule_app_bar_main.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/schedule_days_page_view.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/week_page_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_tab_bar.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_bloc_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_calendar_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_context_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_state_data_scope.dart';
import 'package:bbmstu_app/src/widgets/custom/teaser_view.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/page_controllers_scope.dart';
import 'package:flutter/material.dart';
import 'package:bbmstu_app/main.dart';

part 'schedule_screen_main.dart';

part 'schedule_screen_dialog.dart';

typedef _DataBuilder = Widget Function();

@immutable
class _BlocStateBuilder extends StatelessWidget {
  final _DataBuilder buildData;

  const _BlocStateBuilder({
    Key? key,
    required this.buildData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = ScheduleBlocScope.watch(context);
    final schedule = state.schedule;

    return state.maybeMap(
      loading: (_) => const StandardLoadingRing(),
      cantFind: (_) => const _EmptyStateView(),
      orElse: () => (schedule == null)
          ? const _EmptyStateView()
          : _Scopes(
              schedule: schedule,
              child: buildData(),
            ),
    );
  }
}

@immutable
class _Scopes extends StatelessWidget {
  final Widget child;
  final Schedule schedule;

  const _Scopes({
    Key? key,
    required this.child,
    required this.schedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScheduleDataContextScope(
      value: ScheduleDataContext(
        schedule: schedule,
      ),
      child: ScheduleCalendarScope(
        child: PageControllersScope(
          child: child,
        ),
      ),
    );
  }
}

class _EmptyStateView extends StatelessWidget {
  const _EmptyStateView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IntroView(
      assetImage: StandardAssetImage(
        themed: true,
        imageAsset: ImageAsset.empty_schedule,
      ),
      description:
          'Здесь отображается расписание вашей группы, но для этого вы должны войти или сменить основную группу в настройках',
    );
  }
}
