import 'package:local_database/local_database.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';

extension WhomTypeMapper on Whom {
  WhomTypeSql getWhomTypeSql() {
    return map(
      group: (group) => WhomTypeSql.group,
      teacher: (teacher) => WhomTypeSql.teacher,
    );
  }
}
