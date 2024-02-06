// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LessonTimerStateTearOff {
  const _$LessonTimerStateTearOff();

  LessonTimerStateEmpty empty() {
    return const LessonTimerStateEmpty();
  }

  LessonTimerStateNext next({required Lesson target, required Duration time}) {
    return LessonTimerStateNext(
      target: target,
      time: time,
    );
  }

  LessonTimerStateCurrent current(
      {required Lesson target,
      required Duration time,
      required double progress}) {
    return LessonTimerStateCurrent(
      target: target,
      time: time,
      progress: progress,
    );
  }
}

/// @nodoc
const $LessonTimerState = _$LessonTimerStateTearOff();

/// @nodoc
mixin _$LessonTimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Lesson target, Duration time) next,
    required TResult Function(Lesson target, Duration time, double progress)
        current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonTimerStateEmpty value) empty,
    required TResult Function(LessonTimerStateNext value) next,
    required TResult Function(LessonTimerStateCurrent value) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTimerStateCopyWith<$Res> {
  factory $LessonTimerStateCopyWith(
          LessonTimerState value, $Res Function(LessonTimerState) then) =
      _$LessonTimerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonTimerStateCopyWithImpl<$Res>
    implements $LessonTimerStateCopyWith<$Res> {
  _$LessonTimerStateCopyWithImpl(this._value, this._then);

  final LessonTimerState _value;
  // ignore: unused_field
  final $Res Function(LessonTimerState) _then;
}

/// @nodoc
abstract class $LessonTimerStateEmptyCopyWith<$Res> {
  factory $LessonTimerStateEmptyCopyWith(LessonTimerStateEmpty value,
          $Res Function(LessonTimerStateEmpty) then) =
      _$LessonTimerStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$LessonTimerStateEmptyCopyWithImpl<$Res>
    extends _$LessonTimerStateCopyWithImpl<$Res>
    implements $LessonTimerStateEmptyCopyWith<$Res> {
  _$LessonTimerStateEmptyCopyWithImpl(
      LessonTimerStateEmpty _value, $Res Function(LessonTimerStateEmpty) _then)
      : super(_value, (v) => _then(v as LessonTimerStateEmpty));

  @override
  LessonTimerStateEmpty get _value => super._value as LessonTimerStateEmpty;
}

/// @nodoc

class _$LessonTimerStateEmpty extends LessonTimerStateEmpty {
  const _$LessonTimerStateEmpty() : super._();

  @override
  String toString() {
    return 'LessonTimerState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LessonTimerStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Lesson target, Duration time) next,
    required TResult Function(Lesson target, Duration time, double progress)
        current,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonTimerStateEmpty value) empty,
    required TResult Function(LessonTimerStateNext value) next,
    required TResult Function(LessonTimerStateCurrent value) current,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class LessonTimerStateEmpty extends LessonTimerState {
  const factory LessonTimerStateEmpty() = _$LessonTimerStateEmpty;
  const LessonTimerStateEmpty._() : super._();
}

/// @nodoc
abstract class $LessonTimerStateNextCopyWith<$Res> {
  factory $LessonTimerStateNextCopyWith(LessonTimerStateNext value,
          $Res Function(LessonTimerStateNext) then) =
      _$LessonTimerStateNextCopyWithImpl<$Res>;
  $Res call({Lesson target, Duration time});

  $LessonCopyWith<$Res> get target;
}

/// @nodoc
class _$LessonTimerStateNextCopyWithImpl<$Res>
    extends _$LessonTimerStateCopyWithImpl<$Res>
    implements $LessonTimerStateNextCopyWith<$Res> {
  _$LessonTimerStateNextCopyWithImpl(
      LessonTimerStateNext _value, $Res Function(LessonTimerStateNext) _then)
      : super(_value, (v) => _then(v as LessonTimerStateNext));

  @override
  LessonTimerStateNext get _value => super._value as LessonTimerStateNext;

  @override
  $Res call({
    Object? target = freezed,
    Object? time = freezed,
  }) {
    return _then(LessonTimerStateNext(
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Lesson,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }

  @override
  $LessonCopyWith<$Res> get target {
    return $LessonCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }
}

/// @nodoc

class _$LessonTimerStateNext extends LessonTimerStateNext {
  const _$LessonTimerStateNext({required this.target, required this.time})
      : super._();

  @override
  final Lesson target;
  @override
  final Duration time;

  @override
  String toString() {
    return 'LessonTimerState.next(target: $target, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonTimerStateNext &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  $LessonTimerStateNextCopyWith<LessonTimerStateNext> get copyWith =>
      _$LessonTimerStateNextCopyWithImpl<LessonTimerStateNext>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Lesson target, Duration time) next,
    required TResult Function(Lesson target, Duration time, double progress)
        current,
  }) {
    return next(target, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
  }) {
    return next?.call(target, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(target, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonTimerStateEmpty value) empty,
    required TResult Function(LessonTimerStateNext value) next,
    required TResult Function(LessonTimerStateCurrent value) current,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class LessonTimerStateNext extends LessonTimerState {
  const factory LessonTimerStateNext(
      {required Lesson target,
      required Duration time}) = _$LessonTimerStateNext;
  const LessonTimerStateNext._() : super._();

  Lesson get target => throw _privateConstructorUsedError;
  Duration get time => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonTimerStateNextCopyWith<LessonTimerStateNext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonTimerStateCurrentCopyWith<$Res> {
  factory $LessonTimerStateCurrentCopyWith(LessonTimerStateCurrent value,
          $Res Function(LessonTimerStateCurrent) then) =
      _$LessonTimerStateCurrentCopyWithImpl<$Res>;
  $Res call({Lesson target, Duration time, double progress});

  $LessonCopyWith<$Res> get target;
}

/// @nodoc
class _$LessonTimerStateCurrentCopyWithImpl<$Res>
    extends _$LessonTimerStateCopyWithImpl<$Res>
    implements $LessonTimerStateCurrentCopyWith<$Res> {
  _$LessonTimerStateCurrentCopyWithImpl(LessonTimerStateCurrent _value,
      $Res Function(LessonTimerStateCurrent) _then)
      : super(_value, (v) => _then(v as LessonTimerStateCurrent));

  @override
  LessonTimerStateCurrent get _value => super._value as LessonTimerStateCurrent;

  @override
  $Res call({
    Object? target = freezed,
    Object? time = freezed,
    Object? progress = freezed,
  }) {
    return _then(LessonTimerStateCurrent(
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as Lesson,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $LessonCopyWith<$Res> get target {
    return $LessonCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }
}

/// @nodoc

class _$LessonTimerStateCurrent extends LessonTimerStateCurrent {
  const _$LessonTimerStateCurrent(
      {required this.target, required this.time, required this.progress})
      : super._();

  @override
  final Lesson target;
  @override
  final Duration time;
  @override
  final double progress;

  @override
  String toString() {
    return 'LessonTimerState.current(target: $target, time: $time, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonTimerStateCurrent &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.progress, progress) ||
                const DeepCollectionEquality()
                    .equals(other.progress, progress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(progress);

  @JsonKey(ignore: true)
  @override
  $LessonTimerStateCurrentCopyWith<LessonTimerStateCurrent> get copyWith =>
      _$LessonTimerStateCurrentCopyWithImpl<LessonTimerStateCurrent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Lesson target, Duration time) next,
    required TResult Function(Lesson target, Duration time, double progress)
        current,
  }) {
    return current(target, time, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
  }) {
    return current?.call(target, time, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Lesson target, Duration time)? next,
    TResult Function(Lesson target, Duration time, double progress)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(target, time, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonTimerStateEmpty value) empty,
    required TResult Function(LessonTimerStateNext value) next,
    required TResult Function(LessonTimerStateCurrent value) current,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonTimerStateEmpty value)? empty,
    TResult Function(LessonTimerStateNext value)? next,
    TResult Function(LessonTimerStateCurrent value)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class LessonTimerStateCurrent extends LessonTimerState {
  const factory LessonTimerStateCurrent(
      {required Lesson target,
      required Duration time,
      required double progress}) = _$LessonTimerStateCurrent;
  const LessonTimerStateCurrent._() : super._();

  Lesson get target => throw _privateConstructorUsedError;
  Duration get time => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonTimerStateCurrentCopyWith<LessonTimerStateCurrent> get copyWith =>
      throw _privateConstructorUsedError;
}
