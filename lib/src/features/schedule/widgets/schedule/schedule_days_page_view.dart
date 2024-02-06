import 'package:bbmstu_app/src/features/schedule/widgets/scopes/page_controllers_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/lesson_page_view_notifier_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/lesson_timer_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_calendar_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_state_data_scope.dart';
import 'package:flutter/material.dart';

import 'schedule_day_view.dart';

class ScheduleDaysPageView extends StatelessWidget {
  const ScheduleDaysPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageControllersScope.watch(context).dayController;
    final calendar = ScheduleCalendarScope.watch(context);
    return LessonPageViewNotifierScope(
      child: PageView.builder(
        controller: controller,
        itemCount: calendar.daysCount,
        itemBuilder: (context, index) => _LessonTimer(
          selectedDayIndex: calendar.selectedDayIndex,
          dayIndex: index,
          child: _ScheduleDayView(
            dayIndex: index,
          ),
        ),
      ),
    );
  }
}

@immutable
class _LessonTimer extends StatelessWidget {
  final Widget child;
  final int? selectedDayIndex;
  final int dayIndex;

  const _LessonTimer({
    Key? key,
    required this.child,
    required this.selectedDayIndex,
    required this.dayIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showTimer = dayIndex == selectedDayIndex;

    if (showTimer) {
      return Builder(builder: (context) {
        final scheduleDay = ScheduleDataContextScope.watch(context).schedule.lessons.byDays[dayIndex];
        return LessonTimerScope(
          child: child,
          scheduleDay: scheduleDay,
        );
      });
    }

    return LessonTimerScope.empty(
      child: child,
    );
  }
}

@immutable
class _ScheduleDayView extends StatelessWidget {
  final int dayIndex;

  const _ScheduleDayView({
    Key? key,
    required this.dayIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = LessonPageViewNotifierScope.watch(context)[dayIndex];
    return ScheduleDayView(
      viewModel: viewModel,
    );
  }
}
