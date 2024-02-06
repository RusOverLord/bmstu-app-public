import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_calendar_scope.dart';
import 'package:flutter/material.dart';

typedef _State = SchedulePageControllersState;

typedef _StateScope = ValueScope<SchedulePageControllersState>;

@immutable
class PageControllersScope extends StatefulWidget {
  final Widget child;

  const PageControllersScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<PageControllersScope> createState() => _PageControllersScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);
}

class _PageControllersScopeState extends State<PageControllersScope> {
  late final _dayController = PageController(
    initialPage: ScheduleCalendarScope.read(context).dayIndex,
  );

  late final _weekController = PageController(
    initialPage: ScheduleCalendarScope.read(context).weekIndex,
  );

  @override
  void dispose() {
    _dayController.dispose();
    _weekController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _StateScope(
      value: _State(
        dayController: _dayController,
        weekController: _weekController,
      ),
      child: widget.child,
    );
  }
}

class SchedulePageControllersState {
  final PageController dayController;
  final PageController weekController;

  SchedulePageControllersState({
    required this.dayController,
    required this.weekController,
  });
}
