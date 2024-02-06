import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/days_swipe_controller.dart';
import 'package:flutter/material.dart';

import '../schedule/schedule_controllers_di_factory.dart';

typedef _Controller = DaysSwipeController;

typedef _ControllerScope = ValueScope<_Controller>;

@immutable
class DaysSwipeControllerScope extends StatefulWidget {
  final Widget child;

  const DaysSwipeControllerScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<DaysSwipeControllerScope> createState() => _DaysSwipeControllerScopeState();

  static _Controller watch(BuildContext context) => ValueScope.watch<_Controller>(context);
}

class _DaysSwipeControllerScopeState extends State<DaysSwipeControllerScope> {
  late _Controller _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = ScheduleControllersDIFactory(context).daysSwipeController;
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
