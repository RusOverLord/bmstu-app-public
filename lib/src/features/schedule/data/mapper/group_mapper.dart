import 'package:local_database/local_database.dart';
import 'package:remote_api/remote_api.dart';
import 'package:bbmstu_app/src/features/schedule/models/whom.dart';

extension GroupMapper on Group {
  GroupSql toSql() {
    return GroupSql(
      uuid: uuid,
      lessonUuid: lessonUuid,
      name: name,
      customName: customName,
    );
  }
}

extension GroupOpenApiMapper on ModelsModelGroup {
  Group toModel([String? lessonUuid]) {
    return Group(
      uuid: uuid ?? '',
      lessonUuid: lessonUuid ?? '',
      name: name ?? '',
    );
  }
}

extension GroupSqlMapper on GroupSql {
  Group toModel() {
    return Group(
      uuid: uuid,
      lessonUuid: lessonUuid,
      name: name,
      customName: customName,
    );
  }
}
