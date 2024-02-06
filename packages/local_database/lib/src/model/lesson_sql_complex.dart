import 'package:local_database/src/local_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_sql_complex.freezed.dart';

@freezed
abstract class LessonSqlComplex with _$LessonSqlComplex {
  const LessonSqlComplex._();

  const factory LessonSqlComplex.group({
    required LessonSql lesson,
    required Iterable<TeacherSql> teachers,
  }) = LessonSqlComplexGroup;

  const factory LessonSqlComplex.teacher({
    required LessonSql lesson,
    required Iterable<GroupSql> groups,
  }) = LessonSqlComplexTeacher;
}
