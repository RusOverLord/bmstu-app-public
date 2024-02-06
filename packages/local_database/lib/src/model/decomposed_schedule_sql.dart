import 'package:local_database/src/local_database.dart';
import 'whom_sql_collection.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'decomposed_schedule_sql.freezed.dart';

@freezed
abstract class DecomposedScheduleSql with _$DecomposedScheduleSql {
  const DecomposedScheduleSql._();

  const factory DecomposedScheduleSql.group({
    required ScheduleSql schedule,
    required GroupSql group,
    required Iterable<LessonSql> lessons,
    required WhomSqlCollection lessonsWhom,
  }) = DecomposedScheduleSqlGroup;

  const factory DecomposedScheduleSql.teacher({
    required ScheduleSql schedule,
    required TeacherSql teacher,
    required Iterable<LessonSql> lessons,
    required WhomSqlCollection lessonsWhom,
  }) = DecomposedScheduleSqlTeacher;
}
