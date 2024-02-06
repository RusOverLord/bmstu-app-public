// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'week_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeekViewModelTearOff {
  const _$WeekViewModelTearOff();

  _WeekViewModel call(
      {required String weekTitle, required List<DayTabViewModel> days}) {
    return _WeekViewModel(
      weekTitle: weekTitle,
      days: days,
    );
  }
}

/// @nodoc
const $WeekViewModel = _$WeekViewModelTearOff();

/// @nodoc
mixin _$WeekViewModel {
  String get weekTitle => throw _privateConstructorUsedError;
  List<DayTabViewModel> get days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekViewModelCopyWith<WeekViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekViewModelCopyWith<$Res> {
  factory $WeekViewModelCopyWith(
          WeekViewModel value, $Res Function(WeekViewModel) then) =
      _$WeekViewModelCopyWithImpl<$Res>;
  $Res call({String weekTitle, List<DayTabViewModel> days});
}

/// @nodoc
class _$WeekViewModelCopyWithImpl<$Res>
    implements $WeekViewModelCopyWith<$Res> {
  _$WeekViewModelCopyWithImpl(this._value, this._then);

  final WeekViewModel _value;
  // ignore: unused_field
  final $Res Function(WeekViewModel) _then;

  @override
  $Res call({
    Object? weekTitle = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      weekTitle: weekTitle == freezed
          ? _value.weekTitle
          : weekTitle // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayTabViewModel>,
    ));
  }
}

/// @nodoc
abstract class _$WeekViewModelCopyWith<$Res>
    implements $WeekViewModelCopyWith<$Res> {
  factory _$WeekViewModelCopyWith(
          _WeekViewModel value, $Res Function(_WeekViewModel) then) =
      __$WeekViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String weekTitle, List<DayTabViewModel> days});
}

/// @nodoc
class __$WeekViewModelCopyWithImpl<$Res>
    extends _$WeekViewModelCopyWithImpl<$Res>
    implements _$WeekViewModelCopyWith<$Res> {
  __$WeekViewModelCopyWithImpl(
      _WeekViewModel _value, $Res Function(_WeekViewModel) _then)
      : super(_value, (v) => _then(v as _WeekViewModel));

  @override
  _WeekViewModel get _value => super._value as _WeekViewModel;

  @override
  $Res call({
    Object? weekTitle = freezed,
    Object? days = freezed,
  }) {
    return _then(_WeekViewModel(
      weekTitle: weekTitle == freezed
          ? _value.weekTitle
          : weekTitle // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayTabViewModel>,
    ));
  }
}

/// @nodoc

class _$_WeekViewModel implements _WeekViewModel {
  const _$_WeekViewModel({required this.weekTitle, required this.days});

  @override
  final String weekTitle;
  @override
  final List<DayTabViewModel> days;

  @override
  String toString() {
    return 'WeekViewModel(weekTitle: $weekTitle, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeekViewModel &&
            (identical(other.weekTitle, weekTitle) ||
                const DeepCollectionEquality()
                    .equals(other.weekTitle, weekTitle)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weekTitle) ^
      const DeepCollectionEquality().hash(days);

  @JsonKey(ignore: true)
  @override
  _$WeekViewModelCopyWith<_WeekViewModel> get copyWith =>
      __$WeekViewModelCopyWithImpl<_WeekViewModel>(this, _$identity);
}

abstract class _WeekViewModel implements WeekViewModel {
  const factory _WeekViewModel(
      {required String weekTitle,
      required List<DayTabViewModel> days}) = _$_WeekViewModel;

  @override
  String get weekTitle => throw _privateConstructorUsedError;
  @override
  List<DayTabViewModel> get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeekViewModelCopyWith<_WeekViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DayTabViewModelTearOff {
  const _$DayTabViewModelTearOff();

  DayTabViewModelCommon common(
      {required int index,
      required bool isToday,
      required String date,
      required String dayOfWeek}) {
    return DayTabViewModelCommon(
      index: index,
      isToday: isToday,
      date: date,
      dayOfWeek: dayOfWeek,
    );
  }

  DayTabViewModelEditing editing(
      {required int index, required String dayOfWeek}) {
    return DayTabViewModelEditing(
      index: index,
      dayOfWeek: dayOfWeek,
    );
  }
}

/// @nodoc
const $DayTabViewModel = _$DayTabViewModelTearOff();

/// @nodoc
mixin _$DayTabViewModel {
  int get index => throw _privateConstructorUsedError;
  String get dayOfWeek => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool isToday, String date, String dayOfWeek)
        common,
    required TResult Function(int index, String dayOfWeek) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, bool isToday, String date, String dayOfWeek)?
        common,
    TResult Function(int index, String dayOfWeek)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isToday, String date, String dayOfWeek)?
        common,
    TResult Function(int index, String dayOfWeek)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTabViewModelCommon value) common,
    required TResult Function(DayTabViewModelEditing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DayTabViewModelCommon value)? common,
    TResult Function(DayTabViewModelEditing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTabViewModelCommon value)? common,
    TResult Function(DayTabViewModelEditing value)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayTabViewModelCopyWith<DayTabViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTabViewModelCopyWith<$Res> {
  factory $DayTabViewModelCopyWith(
          DayTabViewModel value, $Res Function(DayTabViewModel) then) =
      _$DayTabViewModelCopyWithImpl<$Res>;
  $Res call({int index, String dayOfWeek});
}

/// @nodoc
class _$DayTabViewModelCopyWithImpl<$Res>
    implements $DayTabViewModelCopyWith<$Res> {
  _$DayTabViewModelCopyWithImpl(this._value, this._then);

  final DayTabViewModel _value;
  // ignore: unused_field
  final $Res Function(DayTabViewModel) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? dayOfWeek = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeek: dayOfWeek == freezed
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $DayTabViewModelCommonCopyWith<$Res>
    implements $DayTabViewModelCopyWith<$Res> {
  factory $DayTabViewModelCommonCopyWith(DayTabViewModelCommon value,
          $Res Function(DayTabViewModelCommon) then) =
      _$DayTabViewModelCommonCopyWithImpl<$Res>;
  @override
  $Res call({int index, bool isToday, String date, String dayOfWeek});
}

/// @nodoc
class _$DayTabViewModelCommonCopyWithImpl<$Res>
    extends _$DayTabViewModelCopyWithImpl<$Res>
    implements $DayTabViewModelCommonCopyWith<$Res> {
  _$DayTabViewModelCommonCopyWithImpl(
      DayTabViewModelCommon _value, $Res Function(DayTabViewModelCommon) _then)
      : super(_value, (v) => _then(v as DayTabViewModelCommon));

  @override
  DayTabViewModelCommon get _value => super._value as DayTabViewModelCommon;

  @override
  $Res call({
    Object? index = freezed,
    Object? isToday = freezed,
    Object? date = freezed,
    Object? dayOfWeek = freezed,
  }) {
    return _then(DayTabViewModelCommon(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isToday: isToday == freezed
          ? _value.isToday
          : isToday // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dayOfWeek: dayOfWeek == freezed
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DayTabViewModelCommon implements DayTabViewModelCommon {
  const _$DayTabViewModelCommon(
      {required this.index,
      required this.isToday,
      required this.date,
      required this.dayOfWeek});

  @override
  final int index;
  @override
  final bool isToday;
  @override
  final String date;
  @override
  final String dayOfWeek;

  @override
  String toString() {
    return 'DayTabViewModel.common(index: $index, isToday: $isToday, date: $date, dayOfWeek: $dayOfWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayTabViewModelCommon &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.isToday, isToday) ||
                const DeepCollectionEquality()
                    .equals(other.isToday, isToday)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(isToday) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(dayOfWeek);

  @JsonKey(ignore: true)
  @override
  $DayTabViewModelCommonCopyWith<DayTabViewModelCommon> get copyWith =>
      _$DayTabViewModelCommonCopyWithImpl<DayTabViewModelCommon>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool isToday, String date, String dayOfWeek)
        common,
    required TResult Function(int index, String dayOfWeek) editing,
  }) {
    return common(index, isToday, date, dayOfWeek);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, bool isToday, String date, String dayOfWeek)?
        common,
    TResult Function(int index, String dayOfWeek)? editing,
  }) {
    return common?.call(index, isToday, date, dayOfWeek);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isToday, String date, String dayOfWeek)?
        common,
    TResult Function(int index, String dayOfWeek)? editing,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(index, isToday, date, dayOfWeek);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTabViewModelCommon value) common,
    required TResult Function(DayTabViewModelEditing value) editing,
  }) {
    return common(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DayTabViewModelCommon value)? common,
    TResult Function(DayTabViewModelEditing value)? editing,
  }) {
    return common?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTabViewModelCommon value)? common,
    TResult Function(DayTabViewModelEditing value)? editing,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(this);
    }
    return orElse();
  }
}

abstract class DayTabViewModelCommon implements DayTabViewModel {
  const factory DayTabViewModelCommon(
      {required int index,
      required bool isToday,
      required String date,
      required String dayOfWeek}) = _$DayTabViewModelCommon;

  @override
  int get index => throw _privateConstructorUsedError;
  bool get isToday => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @override
  String get dayOfWeek => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DayTabViewModelCommonCopyWith<DayTabViewModelCommon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayTabViewModelEditingCopyWith<$Res>
    implements $DayTabViewModelCopyWith<$Res> {
  factory $DayTabViewModelEditingCopyWith(DayTabViewModelEditing value,
          $Res Function(DayTabViewModelEditing) then) =
      _$DayTabViewModelEditingCopyWithImpl<$Res>;
  @override
  $Res call({int index, String dayOfWeek});
}

/// @nodoc
class _$DayTabViewModelEditingCopyWithImpl<$Res>
    extends _$DayTabViewModelCopyWithImpl<$Res>
    implements $DayTabViewModelEditingCopyWith<$Res> {
  _$DayTabViewModelEditingCopyWithImpl(DayTabViewModelEditing _value,
      $Res Function(DayTabViewModelEditing) _then)
      : super(_value, (v) => _then(v as DayTabViewModelEditing));

  @override
  DayTabViewModelEditing get _value => super._value as DayTabViewModelEditing;

  @override
  $Res call({
    Object? index = freezed,
    Object? dayOfWeek = freezed,
  }) {
    return _then(DayTabViewModelEditing(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      dayOfWeek: dayOfWeek == freezed
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DayTabViewModelEditing implements DayTabViewModelEditing {
  const _$DayTabViewModelEditing(
      {required this.index, required this.dayOfWeek});

  @override
  final int index;
  @override
  final String dayOfWeek;

  @override
  String toString() {
    return 'DayTabViewModel.editing(index: $index, dayOfWeek: $dayOfWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DayTabViewModelEditing &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(dayOfWeek);

  @JsonKey(ignore: true)
  @override
  $DayTabViewModelEditingCopyWith<DayTabViewModelEditing> get copyWith =>
      _$DayTabViewModelEditingCopyWithImpl<DayTabViewModelEditing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, bool isToday, String date, String dayOfWeek)
        common,
    required TResult Function(int index, String dayOfWeek) editing,
  }) {
    return editing(index, dayOfWeek);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, bool isToday, String date, String dayOfWeek)?
        common,
    TResult Function(int index, String dayOfWeek)? editing,
  }) {
    return editing?.call(index, dayOfWeek);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isToday, String date, String dayOfWeek)?
        common,
    TResult Function(int index, String dayOfWeek)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(index, dayOfWeek);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DayTabViewModelCommon value) common,
    required TResult Function(DayTabViewModelEditing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DayTabViewModelCommon value)? common,
    TResult Function(DayTabViewModelEditing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DayTabViewModelCommon value)? common,
    TResult Function(DayTabViewModelEditing value)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class DayTabViewModelEditing implements DayTabViewModel {
  const factory DayTabViewModelEditing(
      {required int index,
      required String dayOfWeek}) = _$DayTabViewModelEditing;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  String get dayOfWeek => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DayTabViewModelEditingCopyWith<DayTabViewModelEditing> get copyWith =>
      throw _privateConstructorUsedError;
}
