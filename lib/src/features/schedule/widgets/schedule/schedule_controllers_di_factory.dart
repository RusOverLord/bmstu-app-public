import 'package:bbmstu_app/src/core/utility/page_jump_controller.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/day_tab_opacity_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/days_swipe_controller.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/week_page_view_controller.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/days_swipe_controller_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/page_controllers_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_calendar_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_context_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_data_di_factory.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_state_data_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/week_page_view_controller_scope.dart';
import 'package:flutter/widgets.dart';

class ScheduleControllersDIFactory {
  final BuildContext _context;

  ScheduleControllersDIFactory(this._context);

  late final _dataFactory = ScheduleDataDIFactory(_context);

  late final scheduleContext = ScheduleContextScope.watch(_context);

  late final scheduleDataContext = ScheduleDataContextScope.watch(_context);

  late final scheduleCalendarBloc = ScheduleCalendarScope.watchBloc(_context);

  late final schedulePageControllersState = PageControllersScope.watch(_context);

  late final daysSwipeController = DaysSwipeController(
    jumpController: PageViewJumpController(
      pageController: schedulePageControllersState.dayController,
      pageViewNotifier: _dataFactory.lessonPageViewNotifier,
    ),
    dayTapNotifier: WeekPageViewControllerScope.watch(_context),
  );

  late final weekPageViewController = WeePageViewController(
    jumpController: PageViewJumpController(
      pageController: schedulePageControllersState.weekController,
      pageViewNotifier: _dataFactory.weekPageViewNotifier,
    ),
    dayPageController: schedulePageControllersState.dayController,
  );

  late final dayTabsOpacityNotifier = DayTabsOpacityNotifier(
    dayJumpNotifier: DaysSwipeControllerScope.watch(_context),
    dayTapNotifier: WeekPageViewControllerScope.watch(_context),
    dayController: schedulePageControllersState.dayController,
  );
}
