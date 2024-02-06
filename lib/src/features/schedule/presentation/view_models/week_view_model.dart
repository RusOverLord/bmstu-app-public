import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_view_model.freezed.dart';

@freezed
class WeekViewModel with _$WeekViewModel {
  const factory WeekViewModel({
    required String weekTitle,
    required List<DayTabViewModel> days,
  }) = _WeekViewModel;
}

@freezed
class DayTabViewModel with _$DayTabViewModel {
  const factory DayTabViewModel.common({
    required int index,
    required bool isToday,
    required String date,
    required String dayOfWeek,
  }) = DayTabViewModelCommon;

  const factory DayTabViewModel.editing({
    required int index,
    required String dayOfWeek,
  }) = DayTabViewModelEditing;
}

extension DayTabViewModelExtension on DayTabViewModel {
  bool get isCommon => map(
        common: (common) => true,
        editing: (editing) => false,
      );

  bool get isEditing => map(
        common: (common) => false,
        editing: (editing) => true,
      );

  bool get isToday => map(
        common: (common) => common.isToday,
        editing: (editing) => false,
      );
}
