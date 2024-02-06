import 'package:bbmstu_app/src/core/local_database/local_database_scope.dart';
import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/data/schedule_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/schedule_registry.dart';
import 'package:flutter/material.dart';

typedef _Value = ScheduleRepository;

typedef _Scope = ValueScope<_Value>;

@immutable
class ScheduleRepositoryScope extends StatelessWidget {
  final Widget child;

  const ScheduleRepositoryScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  static _Value watch(BuildContext context) => ValueScope.watch<_Value>(context);

  static _Value read(BuildContext context) => ValueScope.read<_Value>(context);

  @override
  Widget build(BuildContext context) {
    return _Scope(
      value: _Value(
        local: LocalDatabaseScope.watchScheduleDao(context),
        remote: NetworkScope.watchScheduleApi(context),
        scheduleRegistry: ScheduleRegistry(),
      ),
      child: child,
    );
  }
}
