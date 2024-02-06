import 'package:local_database/src/local_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'lesson_sql_complex.dart';

part 'schedule_sql_complex.freezed.dart';

@freezed
abstract class ScheduleSqlComplex with _$ScheduleSqlComplex {
  const ScheduleSqlComplex._();

  const factory ScheduleSqlComplex.group({
    required ScheduleSql schedule,
    required GroupSql group,
    required Iterable<LessonSqlComplexGroup> lessons,
  }) = ScheduleSqlComplexGroup;

  const factory ScheduleSqlComplex.teacher({
    required ScheduleSql schedule,
    required TeacherSql teacher,
    required Iterable<LessonSqlComplexTeacher> lessons,
  }) = ScheduleSqlComplexTeacher;
}
