import 'package:bbmstu_app/src/features/schedule/models/whom.dart';
import 'package:bbmstu_app/src/features/schedule/models/lesson.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/schedule_lessons_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const Schedule._();

  const factory Schedule({
    required String uuid,
    required Whom whom,
    required ScheduleLessons lessons,
    required bool isNumeratorFirst,
    required SemesterRange semesterRange,
    required String etag,
  }) = _Schedule;
}

@immutable
class SemesterRange {
  final DateTime start;
  final DateTime end;

  const SemesterRange({
    required this.start,
    required this.end,
  });

  Duration get duration => end.difference(start);

  bool isBefore(DateTime time) => end.isBefore(time);

  bool isAfter(DateTime time) => start.isAfter(time);

  bool isInclude(DateTime time) => !isAfter(time) && !isBefore(time);

  int get daysCount => duration.inDays;

  int get weeksCount => duration.inWeeks;

  @override
  String toString() {
    return 'SemesterRange('
        'start: $start, '
        'end: $end'
        ')';
  }
}

typedef ScheduleLessons = ScheduleLessonsCollection<ScheduleDay>;

typedef ScheduleWeek = ScheduleWeekCollection<ScheduleDay>;

typedef ScheduleDay = ScheduleDayCollection<Lesson>;

extension on Duration {
  int get inWeeks => inDays ~/ 7;
}
