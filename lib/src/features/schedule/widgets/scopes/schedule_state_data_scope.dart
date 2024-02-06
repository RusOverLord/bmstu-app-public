import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:flutter/widgets.dart';

class ScheduleDataContext {
  final Schedule schedule;

  ScheduleDataContext({
    required this.schedule,
  });
}

typedef _Value = ScheduleDataContext;

typedef _Scope = ValueScope<_Value>;

@immutable
class ScheduleDataContextScope extends StatelessWidget {
  final _Value value;
  final Widget child;

  const ScheduleDataContextScope({
    Key? key,
    required this.child,
    required this.value,
  }) : super(key: key);

  static _Value watch(BuildContext context) => ValueScope.watch<_Value>(context);

  static _Value read(BuildContext context) => ValueScope.read<_Value>(context);

  @override
  Widget build(BuildContext context) {
    return _Scope(
      value: value,
      child: child,
    );
  }
}
