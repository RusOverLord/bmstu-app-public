import 'dart:async';

import 'package:bbmstu_app/src/core/utility/delayed_timer.dart';
import 'package:bbmstu_app/src/core/utility/value_stream.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bbmstu_app/src/features/schedule/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_calendar_bloc.freezed.dart';

@freezed
class ScheduleCalendarState with _$ScheduleCalendarState {
  const ScheduleCalendarState._();

  const factory ScheduleCalendarState({
    required RelativeDate now,
    required RelativeDateRange range,
    required int? selectedDayIndex,
    required int dayIndex,
  }) = _ScheduleCalendarState;

  factory ScheduleCalendarState.now(SemesterRange semesterRange) {
    final range = RelativeDateRange.fromRange(
      start: semesterRange.start,
      end: semesterRange.end,
    );
    final now = RelativeDate(DateTime.now().difference(semesterRange.start));
    final RelativeDate date;
    int? selectedDay;

    if (now.isBefore(range)) {
      date = range.startDate;
    } else if (now.isAfter(range)) {
      date = range.endDate;
    } else {
      date = now;

      if (DateTime.now().weekday != DateTime.sunday) {
        selectedDay = now.day;
      }
    }

    return ScheduleCalendarState(
      now: date,
      range: range,
      selectedDayIndex: (selectedDay != null) ? (selectedDay / 7 * daysInScheduleWeek).ceil() : null,
      dayIndex: (date.day / 7 * daysInScheduleWeek).ceil(),
    );
  }

  int get weekIndex => dayIndex ~/ daysInScheduleWeek;

  /// _range.daysCount может не делиться нацело на 6
  int get daysCount => weeksCount * daysInScheduleWeek;

  int get weeksCount => range.weeksCount;

  bool get hasSelectedDay => selectedDayIndex != null;

  bool get hasNotSelectedDay => !hasSelectedDay;
}

///TODO: подписка через шину событий
class ScheduleCalendarBloc extends Cubit<ScheduleCalendarState> {
  final ValueStream<SemesterRange> _semesterRangeStream;
  late final StreamSubscription<SemesterRange> _subscription;
  late DelayedTimer _dayChangeTimer;

  ScheduleCalendarBloc({
    required ValueStream<SemesterRange> semesterRange,
  })  : _semesterRangeStream = semesterRange,
        super(ScheduleCalendarState.now(semesterRange.value)) {
    _createTimer(semesterRange.value);
    _subscription = semesterRange.listen(_recreateTimer);
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    _dayChangeTimer.cancel();
    return super.close();
  }

  void restart() {
    emit(ScheduleCalendarState.now(_semesterRange));
    _recreateTimer(_semesterRange);
  }

  SemesterRange get _semesterRange => _semesterRangeStream.value;

  void _recreateTimer(SemesterRange semesterRange) {
    _dayChangeTimer.cancel();
    _createTimer(semesterRange);
  }

  void _createTimer(SemesterRange semesterRange) {
    final now = DateTime.now();
    _dayChangeTimer = DelayedTimer(
      callBack: () => emit(ScheduleCalendarState.now(semesterRange)),
      period: const Duration(days: 1),
      delay: Duration(
        hours: Duration.hoursPerDay - now.hour - 1,
        minutes: Duration.minutesPerHour - now.minute - 1,
        seconds: Duration.secondsPerMinute - now.second + 2,
      ),
    )..start();
  }
}

class ScheduleCalendarEditingBloc extends Cubit<ScheduleCalendarState> {
  ScheduleCalendarEditingBloc()
      : super(
          const ScheduleCalendarState(
            now: RelativeDate.zero,
            range: RelativeDateRange(Duration(days: 12)),
            selectedDayIndex: -1,
            dayIndex: 0,
          ),
        );
}

@immutable
class RelativeDate {
  static const zero = RelativeDate(Duration.zero);
  final Duration _duration;

  const RelativeDate(this._duration);

  int get day => _duration.inDays;

  int get week => _duration.inWeeks;

  bool isBefore(RelativeDateRange range) => range.startDate.day > day;

  bool isAfter(RelativeDateRange range) => range.endDate.day < day;

  @override
  int get hashCode => _duration.hashCode;

  @override
  bool operator ==(Object other) => _duration == other;

  @override
  String toString() {
    return 'RelativeDate('
        '_duration: $_duration, '
        'day: $day, '
        'week: $week'
        ')';
  }
}

class RelativeDateRange {
  final Duration _duration;

  const RelativeDateRange(this._duration);

  factory RelativeDateRange.fromRange({
    required DateTime start,
    required DateTime end,
  }) =>
      RelativeDateRange(end.difference(start));

  RelativeDate get startDate => RelativeDate.zero;

  RelativeDate get endDate => RelativeDate(Duration(days: _duration.inDays));

  int get daysCount => endDate.day;

  int get weeksCount => endDate.week;

  @override
  int get hashCode => _duration.hashCode;

  @override
  bool operator ==(Object other) => _duration == other;

  @override
  String toString() {
    return 'RelativeDate('
        '_duration: $_duration, '
        'startDate: $startDate, '
        'endDate: $endDate, '
        'daysCount: $daysCount, '
        'weeksCount: $weeksCount, '
        ')';
  }
}

extension on Duration {
  int get inWeeks => inDays ~/ 7;
}
