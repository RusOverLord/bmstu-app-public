import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';
import 'package:local_database/local_database.dart';

typedef _Value = LocalDatabase;

typedef _ValueScope = ValueScope<_Value>;

@immutable
class LocalDatabaseScope extends StatefulWidget {
  final Widget child;

  const LocalDatabaseScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<LocalDatabaseScope> createState() => _LocalDatabaseScopeState();

  static _Value watch(BuildContext context) => ValueScope.watch<_Value>(context);

  static ScheduleDao readScheduleDao(BuildContext context) {
    final db = ValueScope.read<_Value>(context);
    return ScheduleDao(
      db: db,
      lessonDao: LessonDao(
        db: db,
      ),
    );
  }

  static ScheduleDao watchScheduleDao(BuildContext context) {
    final db = ValueScope.watch<_Value>(context);
    return ScheduleDao(
      db: db,
      lessonDao: LessonDao(
        db: db,
      ),
    );
  }
}

class _LocalDatabaseScopeState extends State<LocalDatabaseScope> {
  late final _Value _database;

  @override
  void initState() {
    super.initState();
    _database = LocalDatabase();
  }

  @override
  void dispose() {
    _database.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _ValueScope(
      value: _database,
      child: widget.child,
    );
  }
}
