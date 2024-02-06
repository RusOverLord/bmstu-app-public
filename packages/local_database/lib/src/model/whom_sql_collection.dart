import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:local_database/src/local_database.dart';

part 'whom_sql_collection.freezed.dart';

@freezed
abstract class WhomSqlCollection with _$WhomSqlCollection {
  const WhomSqlCollection._();

  const factory WhomSqlCollection.groups(Iterable<GroupSql> groups) = GroupSqlCollection;

  const factory WhomSqlCollection.teachers(Iterable<TeacherSql> teachers) = TeacherSqlCollection;
}
