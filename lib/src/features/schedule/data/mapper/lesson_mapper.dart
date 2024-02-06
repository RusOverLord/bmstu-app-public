import 'package:local_database/local_database.dart';
import 'package:remote_api/remote_api.dart';
import 'package:bbmstu_app/src/features/schedule/data/mapper/mapper.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';

extension LessonMapper on Lesson {
  LessonSql toSql() {
    return LessonSql(
      uuid: uuid,
      scheduleUuid: scheduleUuid,
      isNumerator: isNumerator,
      dayNumber: dayNumber,
      name: name,
      cabinet: cabinet,
      type: type,
      startAt: time.start.toDateTime(),
      endAt: time.end.toDateTime(),
    );
  }
}

extension LessonSqlMapper on LessonSqlComplex {
  Lesson toModel() {
    return Lesson(
      uuid: lesson.uuid,
      scheduleUuid: lesson.scheduleUuid,
      isNumerator: lesson.isNumerator,
      dayNumber: lesson.dayNumber,
      name: lesson.name,
      cabinet: lesson.cabinet,
      type: lesson.type,
      time: DayTimeRange(
        start: DayTime.fromDateTime(lesson.startAt),
        end: DayTime.fromDateTime(lesson.endAt),
      ),
      whomList: map(
        group: (group) => group.teachers.map((e) => e.toModel()),
        teacher: (teacher) => teacher.groups.map((e) => e.toModel()),
      ).toList(),
    );
  }
}

extension LessonOpenapiMapper on ModelsModelScheduleLesson {
  Lesson toModel(String scheduleUuid) {
    final whomList = getWhomIterable().toList();

    final startAt = this.startAt!.split(':');
    final endAt = this.endAt!.split(':');

    return Lesson(
      uuid: uuid ?? '',
      scheduleUuid: scheduleUuid,
      dayNumber: (day ?? 1) - 1,
      name: name ?? '',
      cabinet: cabinet ?? '',
      type: type ?? '',
      time: DayTimeRange(
        start: DayTime(
          hour: int.parse(startAt[0]),
          minute: int.parse(startAt[1]),
          second: 0,
        ),
        end: DayTime(
          hour: int.parse(endAt[0]),
          minute: int.parse(endAt[1]),
          second: 0,
        ),
      ),
      isNumerator: isNumerator ?? false,
      whomList: whomList,
    );
  }

  Iterable<Whom> getWhomIterable() {
    if (groups?.isNotEmpty ?? false) {
      return groups!.map((e) => e.toModel(uuid));
    }

    if (teachers?.isNotEmpty ?? false) {
      return teachers!.map((e) => e.toModel(uuid));
    }

    return const [];
  }
}

extension ScheduleLessonsMapper on ScheduleLessons {
  Iterable<Lesson> toIterable() sync* {
    for (var week in this) {
      for (var day in week) {
        for (var lesson in day) {
          yield lesson;
        }
      }
    }
  }
}

extension ScheduleLessonsSorter on Iterable<Lesson> {
  ScheduleLessons toModel(bool isNumeratorFirst) {
    final oddLessons = _oddLessons(isNumeratorFirst).toList(growable: false);
    final evenLessons = _evenLessons(isNumeratorFirst).toList(growable: false);

    return ScheduleLessons(
      odd: _scheduleWeek(oddLessons),
      even: _scheduleWeek(evenLessons),
    );
  }

  ScheduleWeek _scheduleWeek(Iterable<Lesson> weekLessons) {
    ScheduleDay _scheduleDay(int dayNumber) {
      return weekLessons.where((e) => e.dayNumber == dayNumber).toList();
    }

    return ScheduleWeek([for (int i = 0; i < 6; i++) _scheduleDay(i)]);
  }

  Iterable<Lesson> _oddLessons(bool isNumeratorFirst) => (isNumeratorFirst ? _numerator : _denominator);

  Iterable<Lesson> _evenLessons(bool isNumeratorFirst) => (isNumeratorFirst ? _denominator : _numerator);

  Iterable<Lesson> get _numerator => where((e) => e.isNumerator);

  Iterable<Lesson> get _denominator => where((e) => e.isDenominator);
}
