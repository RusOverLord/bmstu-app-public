import 'package:local_database/local_database.dart';
import 'package:remote_api/remote_api.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:bbmstu_app/src/features/schedule/models/models.dart';

import 'mapper.dart';

extension ScheduleMapper on Schedule {
  ScheduleSql toSql({bool? isFavorite}) {
    return ScheduleSql(
      uuid: uuid,
      isFavorite: isFavorite,
      whomType: whom.getWhomTypeSql(),
      isNumeratorFirst: isNumeratorFirst,
      semesterStart: semesterRange.start,
      semesterEnd: semesterRange.end,
      etag: etag,
    );
  }

  DecomposedScheduleSql decomposeToSql({bool? isFavorite}) {
    final lessons = this.lessons.toIterable().toList();

    WhomSqlCollection _whomMapper() {
      return whom.map(
        group: (group) => WhomSqlCollection.teachers(
          lessons.expand((e) => e.whomList.whereType<Teacher>().map((e) => e.toSql())),
        ),
        teacher: (teacher) => WhomSqlCollection.groups(
          lessons.expand((e) => e.whomList.whereType<Group>().map((e) => e.toSql())),
        ),
      );
    }

    final sqlLessons = lessons.map((e) => e.toSql()).toList();

    return whom.map(
      group: (group) {
        return DecomposedScheduleSql.group(
          schedule: toSql(isFavorite: isFavorite),
          group: group.toSql(),
          lessons: sqlLessons,
          lessonsWhom: _whomMapper(),
        );
      },
      teacher: (teacher) {
        return DecomposedScheduleSql.teacher(
          schedule: toSql(isFavorite: isFavorite),
          teacher: teacher.toSql(),
          lessons: sqlLessons,
          lessonsWhom: _whomMapper(),
        );
      },
    );
  }
}

extension ScheduleOpenapiMapper on DsSchedule {
  Schedule toModel() {
    final isNumeratorFirst = this.isNumeratorFirst ?? false;

    final whom = getWhom();
    final uuid = whom.uuid;

    final lessons = this.lessons;
    final List<Lesson> mappedLessons;

    if (lessons != null) {
      mappedLessons = lessons.map((e) => e.toModel(uuid)).toList();
    } else {
      mappedLessons = const [];
    }

    return Schedule(
      uuid: uuid,
      whom: whom,
      lessons: mappedLessons.toModel(isNumeratorFirst),
      isNumeratorFirst: isNumeratorFirst,
      semesterRange: SemesterRange(
        start: _parseDate(semesterStart!),
        end: _parseDate(semesterEnd!),
      ),
      etag: etag!,
    );
  }

  Whom getWhom() {
    if (group != null) {
      return group!.toModel();
    }

    if (teacher != null) {
      return teacher!.toModel();
    }

    throw OpenapiEmptyWhomException();
  }
}

class OpenapiEmptyWhomException implements Exception {}

DateTime _parseDate(String date) {
  final moscow = tz.getLocation('Europe/Moscow');
  var timeInUtc = DateTime.parse(date);
  var moscowTime = tz.TZDateTime.from(timeInUtc, moscow);
  return moscowTime;
}

extension ScheduleSqlMapper on ScheduleSqlComplex {
  Schedule toModel() {
    return Schedule(
      uuid: schedule.uuid,
      whom: getWhomModel(),
      lessons: map(
        group: (group) => group.lessons.map((e) => e.toModel()),
        teacher: (teacher) => teacher.lessons.map((e) => e.toModel()),
      ).toList().toModel(schedule.isNumeratorFirst!),
      isNumeratorFirst: schedule.isNumeratorFirst!,
      semesterRange: SemesterRange(
        start: schedule.semesterStart!,
        end: schedule.semesterEnd!,
      ),
      etag: schedule.etag!,
    );
  }

  Whom getWhomModel() {
    return map(
      group: (group) => group.group.toModel(),
      teacher: (teacher) => teacher.teacher.toModel(),
    );
  }
}
