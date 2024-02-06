import 'package:local_database/local_database.dart';
import 'package:remote_api/remote_api.dart';
import 'package:bbmstu_app/src/features/schedule/models/whom.dart';

extension TeacherMapper on Teacher {
  TeacherSql toSql() {
    return TeacherSql(
      uuid: uuid,
      lessonUuid: lessonUuid,
      name: name,
      customName: customName,
    );
  }
}

extension TeacherOpenApiMapper on ModelsModelTeacher {
  Teacher toModel([String? lessonUuid]) {
    return Teacher(
      uuid: uuid ?? '',
      lessonUuid: lessonUuid ?? '',
      name: name ?? '',
    );
  }
}

extension TeacherSqlMapper on TeacherSql {
  Teacher toModel() {
    return Teacher(
      uuid: uuid,
      lessonUuid: lessonUuid,
      name: name,
      customName: customName,
    );
  }
}
