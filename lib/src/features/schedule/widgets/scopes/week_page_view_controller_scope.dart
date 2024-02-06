import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/week_page_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/schedule_controllers_di_factory.dart';

typedef _Controller = WeePageViewController;

typedef _ControllerScope = ValueScope<_Controller>;

@immutable
class WeekPageViewControllerScope extends StatefulWidget {
  final Widget child;

  const WeekPageViewControllerScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<WeekPageViewControllerScope> createState() => _WeekPageViewControllerScopeState();

  static _Controller watch(BuildContext context) => ValueScope.watch<_Controller>(context);

  static _Controller read(BuildContext context) => ValueScope.read<_Controller>(context);

  static void onTap(
    BuildContext context, {
    required int dayIndex,
  }) =>
      read(context).onTap(dayIndex);
}

class _WeekPageViewControllerScopeState extends State<WeekPageViewControllerScope> {
  late _Controller _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = ScheduleControllersDIFactory(context).weekPageViewController;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _ControllerScope(
      value: _controller,
      child: widget.child,
    );
  }
}
