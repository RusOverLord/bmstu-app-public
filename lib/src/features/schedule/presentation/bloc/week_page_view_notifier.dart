import 'package:bbmstu_app/src/features/schedule/models/schedule.dart';
import 'package:bbmstu_app/src/core/utility/page_jump_controller.dart';
import 'package:bbmstu_app/src/features/schedule/constants.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/view_models/week_view_model.dart';
import 'package:flutter/material.dart';

typedef WeekPageViewState = PageViewState<WeekViewModel>;

abstract class WeekPageViewNotifier extends ValueNotifier<WeekPageViewState>
    implements IValueNotifier<WeekPageViewState>, IPageControllerListener {
  WeekPageViewNotifier(WeekPageViewState state) : super(state);

  factory WeekPageViewNotifier.common({
    required int? selectedDayIndex,
    required Schedule schedule,
  }) {
    final factory = WeekViewModelFactoryCommon(schedule, selectedDayIndex);
    final state = PageViewStateCache.empty(factory);

    return WeekPageViewNotifierCommon(
      state: state,
    );
  }

  factory WeekPageViewNotifier.editing() {
    const factory = WeekViewModelFactoryEditing();
    final state = PageViewStateCache.empty(factory);

    return WeekPageViewNotifierEditing(
      state: state,
    );
  }
}

class WeekPageViewNotifierCommon extends WeekPageViewNotifier with PageControllerListenerBase<WeekViewModel> {
  WeekPageViewNotifierCommon({
    required WeekPageViewState state,
  }) : super(state);
}

class WeekPageViewNotifierEditing extends WeekPageViewNotifier with PageControllerListenerBase<WeekViewModel> {
  WeekPageViewNotifierEditing({
    required WeekPageViewState state,
  }) : super(state);
}

const Map<int, String> _daysOfWeek = {
  0: 'Пн',
  1: 'Вт',
  2: 'Ср',
  3: 'Чт',
  4: 'Пт',
  5: 'Сб',
};

class WeekViewModelFactoryCommon implements PageViewItemFactory<WeekViewModel> {
  static const Map<bool, String> _weekTypes = {
    true: 'неделя, числитель',
    false: 'неделя, знаменатель',
  };
  final Schedule schedule;
  final int? selectedDayIndex;

  const WeekViewModelFactoryCommon(this.schedule, this.selectedDayIndex);

  @override
  WeekViewModel createModel(int index) {
    return WeekViewModel(
      weekTitle: _weekNumberAndType(index + 1),
      days: _days(index),
    );
  }

  String _weekNumberAndType(int weekNumber) {
    final isNumeratorFirst = schedule.isNumeratorFirst;
    final isNumerator = isNumeratorFirst ? weekNumber.isOdd : weekNumber.isEven;
    final weekType = _weekTypes[isNumerator]!;
    return '$weekNumber $weekType';
  }

  List<DayTabViewModel> _days(int weekIndex) {
    final semesterStart = schedule.semesterRange.start;
    final firstWeekDayIndex = weekIndex * daysInScheduleWeek;
    final firstWeekDay = semesterStart.add(Duration(days: weekIndex * DateTime.daysPerWeek));
    return List.generate(
      daysInScheduleWeek,
      (index) {
        final dayIndex = firstWeekDayIndex + index;
        final date = firstWeekDay.add(Duration(days: index));
        return DayTabViewModel.common(
          index: dayIndex,
          dayOfWeek: _daysOfWeek[index]!,
          isToday: dayIndex == selectedDayIndex,
          date: date.day.toString(),
        );
      },
    );
  }
}

class WeekViewModelFactoryEditing implements PageViewItemFactory<WeekViewModel> {
  static const Map<bool, String> _weekTypes = {
    true: 'Числитель',
    false: 'Знаменатель',
  };

  const WeekViewModelFactoryEditing();

  @override
  WeekViewModel createModel(int index) {
    /// isEven because index, not number!
    final isNumerator = index.isEven;
    return WeekViewModel(
      weekTitle: _weekTypes[isNumerator]!,
      days: _days(isNumerator),
    );
  }

  List<DayTabViewModel> _days(bool isNumerator) {
    final firstDayIndex = isNumerator ? 0 : daysInScheduleWeek;
    return List.generate(
      daysInScheduleWeek,
      (index) {
        return DayTabViewModel.editing(
          index: firstDayIndex + index,
          dayOfWeek: _daysOfWeek[index]!,
        );
      },
    );
  }
}
