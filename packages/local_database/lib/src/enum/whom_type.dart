enum WhomTypeSql {
  group,
  teacher,
}

extension WhomTypeCompare on WhomTypeSql {
  bool get isGroup => this == WhomTypeSql.group;

  bool get isTeacher => this == WhomTypeSql.teacher;
}
