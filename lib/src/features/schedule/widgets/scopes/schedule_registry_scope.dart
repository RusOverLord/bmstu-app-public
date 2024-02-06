import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_registry.dart';
import 'package:flutter/material.dart';

typedef _Value = ScheduleRegistry;

typedef _Scope = ValueScope<_Value>;

@immutable
class ScheduleRegistryScope extends StatelessWidget {
  final Widget child;

  const ScheduleRegistryScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  /// на данный момент перестраивать не нужно,
  /// оба метода только считывают значение
  static _Value watch(BuildContext context) => ValueScope.read<_Value>(context);

  static _Value read(BuildContext context) => ValueScope.read<_Value>(context);

  @override
  Widget build(BuildContext context) {
    return _Scope(
      value: _Value(),
      child: child,
    );
  }
}
