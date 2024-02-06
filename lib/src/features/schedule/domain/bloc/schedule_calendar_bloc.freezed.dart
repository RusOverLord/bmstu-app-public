// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleCalendarStateTearOff {
  const _$ScheduleCalendarStateTearOff();

  _ScheduleCalendarState call(
      {required RelativeDate now,
      required RelativeDateRange range,
      required int? selectedDayIndex,
      required int dayIndex}) {
    return _ScheduleCalendarState(
      now: now,
      range: range,
      selectedDayIndex: selectedDayIndex,
      dayIndex: dayIndex,
    );
  }
}

/// @nodoc
const $ScheduleCalendarState = _$ScheduleCalendarStateTearOff();

/// @nodoc
mixin _$ScheduleCalendarState {
  RelativeDate get now => throw _privateConstructorUsedError;
  RelativeDateRange get range => throw _privateConstructorUsedError;
  int? get selectedDayIndex => throw _privateConstructorUsedError;
  int get dayIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleCalendarStateCopyWith<ScheduleCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCalendarStateCopyWith<$Res> {
  factory $ScheduleCalendarStateCopyWith(ScheduleCalendarState value,
          $Res Function(ScheduleCalendarState) then) =
      _$ScheduleCalendarStateCopyWithImpl<$Res>;
  $Res call(
      {RelativeDate now,
      RelativeDateRange range,
      int? selectedDayIndex,
      int dayIndex});
}

/// @nodoc
class _$ScheduleCalendarStateCopyWithImpl<$Res>
    implements $ScheduleCalendarStateCopyWith<$Res> {
  _$ScheduleCalendarStateCopyWithImpl(this._value, this._then);

  final ScheduleCalendarState _value;
  // ignore: unused_field
  final $Res Function(ScheduleCalendarState) _then;

  @override
  $Res call({
    Object? now = freezed,
    Object? range = freezed,
    Object? selectedDayIndex = freezed,
    Object? dayIndex = freezed,
  }) {
    return _then(_value.copyWith(
      now: now == freezed
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as RelativeDate,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RelativeDateRange,
      selectedDayIndex: selectedDayIndex == freezed
          ? _value.selectedDayIndex
          : selectedDayIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      dayIndex: dayIndex == freezed
          ? _value.dayIndex
          : dayIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleCalendarStateCopyWith<$Res>
    implements $ScheduleCalendarStateCopyWith<$Res> {
  factory _$ScheduleCalendarStateCopyWith(_ScheduleCalendarState value,
          $Res Function(_ScheduleCalendarState) then) =
      __$ScheduleCalendarStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RelativeDate now,
      RelativeDateRange range,
      int? selectedDayIndex,
      int dayIndex});
}

/// @nodoc
class __$ScheduleCalendarStateCopyWithImpl<$Res>
    extends _$ScheduleCalendarStateCopyWithImpl<$Res>
    implements _$ScheduleCalendarStateCopyWith<$Res> {
  __$ScheduleCalendarStateCopyWithImpl(_ScheduleCalendarState _value,
      $Res Function(_ScheduleCalendarState) _then)
      : super(_value, (v) => _then(v as _ScheduleCalendarState));

  @override
  _ScheduleCalendarState get _value => super._value as _ScheduleCalendarState;

  @override
  $Res call({
    Object? now = freezed,
    Object? range = freezed,
    Object? selectedDayIndex = freezed,
    Object? dayIndex = freezed,
  }) {
    return _then(_ScheduleCalendarState(
      now: now == freezed
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as RelativeDate,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as RelativeDateRange,
      selectedDayIndex: selectedDayIndex == freezed
          ? _value.selectedDayIndex
          : selectedDayIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      dayIndex: dayIndex == freezed
          ? _value.dayIndex
          : dayIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScheduleCalendarState extends _ScheduleCalendarState {
  const _$_ScheduleCalendarState(
      {required this.now,
      required this.range,
      required this.selectedDayIndex,
      required this.dayIndex})
      : super._();

  @override
  final RelativeDate now;
  @override
  final RelativeDateRange range;
  @override
  final int? selectedDayIndex;
  @override
  final int dayIndex;

  @override
  String toString() {
    return 'ScheduleCalendarState(now: $now, range: $range, selectedDayIndex: $selectedDayIndex, dayIndex: $dayIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduleCalendarState &&
            (identical(other.now, now) ||
                const DeepCollectionEquality().equals(other.now, now)) &&
            (identical(other.range, range) ||
                const DeepCollectionEquality().equals(other.range, range)) &&
            (identical(other.selectedDayIndex, selectedDayIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDayIndex, selectedDayIndex)) &&
            (identical(other.dayIndex, dayIndex) ||
                const DeepCollectionEquality()
                    .equals(other.dayIndex, dayIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(now) ^
      const DeepCollectionEquality().hash(range) ^
      const DeepCollectionEquality().hash(selectedDayIndex) ^
      const DeepCollectionEquality().hash(dayIndex);

  @JsonKey(ignore: true)
  @override
  _$ScheduleCalendarStateCopyWith<_ScheduleCalendarState> get copyWith =>
      __$ScheduleCalendarStateCopyWithImpl<_ScheduleCalendarState>(
          this, _$identity);
}

abstract class _ScheduleCalendarState extends ScheduleCalendarState {
  const factory _ScheduleCalendarState(
      {required RelativeDate now,
      required RelativeDateRange range,
      required int? selectedDayIndex,
      required int dayIndex}) = _$_ScheduleCalendarState;
  const _ScheduleCalendarState._() : super._();

  @override
  RelativeDate get now => throw _privateConstructorUsedError;
  @override
  RelativeDateRange get range => throw _privateConstructorUsedError;
  @override
  int? get selectedDayIndex => throw _privateConstructorUsedError;
  @override
  int get dayIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleCalendarStateCopyWith<_ScheduleCalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}
