import 'package:bbmstu_app/src/features/schedule/widgets/schedule/week_view.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/day_tab_opacity_notifier_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_calendar_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/week_page_view_notifier_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/days_swipe_controller_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/page_controllers_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/week_page_view_controller_scope.dart';
import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';

class WeekPageView extends StatelessWidget {
  const WeekPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WeekPageViewControllerScope(
      child: WeekPageViewNotifierScope(
        child: DaysSwipeControllerScope(
          child: DayTabsOpacityNotifierScope(
            child: _SwipeDetector(
              child: RepaintBoundary(
                child: _PageView(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _SwipeDetector extends StatelessWidget {
  final Widget child;

  const _SwipeDetector({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = WeekPageViewControllerScope.watch(context);
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerMove: controller.onUserSwipe,
      child: child,
    );
  }
}

@immutable
class _PageView extends StatelessWidget {
  const _PageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weeksCount = ScheduleCalendarScope.watch(context).weeksCount;
    final controller = PageControllersScope.watch(context).weekController;
    return SizedBox(
      height: 75 * devScale,
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: weeksCount,
        itemBuilder: (context, index) {
          final viewModel = WeekPageViewNotifierScope.watch(context)[index];
          return WeekView(
            viewModel: viewModel,
          );
        },
      ),
    );
  }
}

class WeekPageViewSliver extends StatelessWidget {
  final Widget bar;
  final Widget body;

  const WeekPageViewSliver({
    Key? key,
    required this.bar,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: bar,
        ),
      ],
      body: body,
    );
  }
}
