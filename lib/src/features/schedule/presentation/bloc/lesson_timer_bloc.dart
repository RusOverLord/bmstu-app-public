import 'dart:collection';

import 'package:bbmstu_app/src/core/utility/delayed_timer.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_timer_bloc.freezed.dart';

@freezed
class LessonTimerState with _$LessonTimerState {
  const LessonTimerState._();

  const factory LessonTimerState.empty() = LessonTimerStateEmpty;

  const factory LessonTimerState.next({
    required Lesson target,
    required Duration time,
  }) = LessonTimerStateNext;

  const factory LessonTimerState.current({
    required Lesson target,
    required Duration time,
    required double progress,
  }) = LessonTimerStateCurrent;

  Lesson? get target => map(
        empty: (_) => null,
        next: (next) => next.target,
        current: (current) => current.target,
      );

  LessonTimerState getState(Lesson lesson) {
    if (lesson == target) {
      return this;
    }

    return const LessonTimerState.empty();
  }
}

class LessonTimer extends Cubit<LessonTimerState> {
  final LessonTimerStateFactory _stateFactory;
  late DelayedTimer _minuteTimer;

  LessonTimer({
    required LessonTimerStateFactory stateFactory,
  })  : _stateFactory = stateFactory,
        super(stateFactory.createState()) {
    _createTimer();
  }

  factory LessonTimer.scheduleDay({
    required ScheduleDay scheduleDay,
  }) {
    return LessonTimer(
      stateFactory: LessonTimerStateFactory(
        scheduleDay: scheduleDay,
      ),
    );
  }

  @override
  Future<void> close() {
    _minuteTimer.cancel();
    return super.close();
  }

  void _createTimer() {
    _minuteTimer = DelayedTimer(
      callBack: updateState,
      period: const Duration(minutes: 1),
      delay: Duration(
        seconds: Duration.secondsPerMinute - DateTime.now().second + 2,
      ),
    )..start();
  }

  void updateState() => emit(_stateFactory.createState());
}

class LessonTimerStateFactory {
  final ScheduleDay _scheduleDay;

  LessonTimerStateFactory({
    required ScheduleDay scheduleDay,
  }) : _scheduleDay = SplayTreeSet.of(scheduleDay);

  LessonTimerState createState() {
    final now = DayTime.now();

    for (var lesson in _scheduleDay) {
      if (lesson.time.isAfter(now)) {
        return LessonTimerState.next(
          target: lesson,
          time: lesson.time.start.difference(now),
        );
      }

      if (lesson.time.isInclude(now) && lesson.time.end != now) {
        final time = lesson.time.end.difference(now);
        return LessonTimerState.current(
          target: lesson,
          time: time,
          progress: time.inMinutes / lesson.time.duration.inMinutes,
        );
      }
    }

    return const LessonTimerState.empty();
  }
}
