import 'package:local_database/src/local_database.dart';

class FavoritesSqlCollection {
  final List<GroupSql> groups;
  final List<TeacherSql> teachers;

  FavoritesSqlCollection({
    required this.groups,
    required this.teachers,
  });
}
