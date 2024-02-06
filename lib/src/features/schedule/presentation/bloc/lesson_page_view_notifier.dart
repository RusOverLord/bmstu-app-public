import 'dart:collection';

import 'package:bbmstu_app/src/core/utility/page_jump_controller.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/schedule_lessons_collection.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/view_models/lesson_view_model.dart';
import 'package:flutter/material.dart';

typedef LessonPageViewNotifierState = PageViewState<ScheduleDayViewModel>;

abstract class LessonPageViewNotifier extends ValueNotifier<LessonPageViewNotifierState>
    implements IValueNotifier<LessonPageViewNotifierState>, IPageControllerListener {
  LessonPageViewNotifier(LessonPageViewNotifierState state) : super(state);

  factory LessonPageViewNotifier.common({
    required ScheduleLessons lessons,
  }) {
    final factory = _LessonListViewModelFactory(lessons);
    final state = PageViewStateCache.empty(factory);

    return LessonPageViewNotifierCommon(
      state: state,
    );
  }
}

class LessonPageViewNotifierCommon extends LessonPageViewNotifier
    with PageControllerListenerBase<ScheduleDayViewModel> {
  LessonPageViewNotifierCommon({
    required LessonPageViewNotifierState state,
  }) : super(state);
}

class _LessonListViewModelFactory implements PageViewItemFactory<ScheduleDayViewModel> {
  final ScheduleLessons lessons;

  const _LessonListViewModelFactory(this.lessons);

  @override
  ScheduleDayViewModel createModel(int index) {
    final scheduleDay = lessons.byDays[index];
    return SplayTreeSet.of(scheduleDay.map(LessonViewModel.fromLesson));
  }
}

typedef ScheduleLessonsViewModel = ScheduleLessonsCollection<ScheduleDayViewModel>;

typedef ScheduleWeekViewModel = ScheduleWeekCollection<ScheduleDayViewModel>;

typedef ScheduleDayViewModel = ScheduleDayCollection<LessonViewModel>;
