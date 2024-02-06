import 'dart:collection';

import 'package:bbmstu_app/src/features/schedule/constants.dart';

class ScheduleLessonsCollection<T extends ScheduleDayCollection> with IterableMixin<ScheduleWeekCollection<T>> {
  final ScheduleWeekCollection<T> _odd;
  final ScheduleWeekCollection<T> _even;

  ScheduleLessonsCollection({
    required ScheduleWeekCollection<T> odd,
    required ScheduleWeekCollection<T> even,
  })  : _odd = odd,
        _even = even;

  ScheduleWeekCollection<T> operator [](bool isOdd) => isOdd ? _odd : _even;

  ScheduleLessonsByDays<T> get byDays => ScheduleLessonsByDays(this);

  @override
  Iterator<ScheduleWeekCollection<T>> get iterator => [_odd, _even].iterator;
}

class ScheduleWeekCollection<T extends ScheduleDayCollection> with IterableMixin<T> {
  final List<T> _days;

  ScheduleWeekCollection(this._days);

  T operator [](int weekDay) => _days[weekDay];

  @override
  Iterator<T> get iterator => _days.iterator;
}

typedef ScheduleDayCollection<T> = Iterable<T>;

class ScheduleLessonsByDays<T extends ScheduleDayCollection> {
  final ScheduleLessonsCollection<T> lessons;

  ScheduleLessonsByDays(this.lessons);

  T operator [](int day) {
    final weekIndex = day ~/ daysInScheduleWeek;
    /// если номер недели 1 - нечётный, то её индекс будет 0 - чётный
    final weekIsOdd = weekIndex.isEven;
    final weekDay = day - weekIndex * daysInScheduleWeek;
    return lessons[weekIsOdd][weekDay];
  }
}
