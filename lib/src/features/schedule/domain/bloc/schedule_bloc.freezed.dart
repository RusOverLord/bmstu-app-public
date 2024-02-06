// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleEventTearOff {
  const _$ScheduleEventTearOff();

  ScheduleEventFetchLocal fetchLocal() {
    return const ScheduleEventFetchLocal();
  }

  ScheduleEventFetchRemote fetchRemote() {
    return const ScheduleEventFetchRemote();
  }

  ScheduleEventSave save({required Schedule schedule}) {
    return ScheduleEventSave(
      schedule: schedule,
    );
  }

  ScheduleEventInitialRemoteFetch initialRemoteFetch({int attempt = 0}) {
    return ScheduleEventInitialRemoteFetch(
      attempt: attempt,
    );
  }

  ScheduleEventPeriodicRemoteFetch periodicRemoteFetch() {
    return const ScheduleEventPeriodicRemoteFetch();
  }
}

/// @nodoc
const $ScheduleEvent = _$ScheduleEventTearOff();

/// @nodoc
mixin _$ScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocal,
    required TResult Function() fetchRemote,
    required TResult Function(Schedule schedule) save,
    required TResult Function(int attempt) initialRemoteFetch,
    required TResult Function() periodicRemoteFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventFetchLocal value) fetchLocal,
    required TResult Function(ScheduleEventFetchRemote value) fetchRemote,
    required TResult Function(ScheduleEventSave value) save,
    required TResult Function(ScheduleEventInitialRemoteFetch value)
        initialRemoteFetch,
    required TResult Function(ScheduleEventPeriodicRemoteFetch value)
        periodicRemoteFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  final ScheduleEvent _value;
  // ignore: unused_field
  final $Res Function(ScheduleEvent) _then;
}

/// @nodoc
abstract class $ScheduleEventFetchLocalCopyWith<$Res> {
  factory $ScheduleEventFetchLocalCopyWith(ScheduleEventFetchLocal value,
          $Res Function(ScheduleEventFetchLocal) then) =
      _$ScheduleEventFetchLocalCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleEventFetchLocalCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventFetchLocalCopyWith<$Res> {
  _$ScheduleEventFetchLocalCopyWithImpl(ScheduleEventFetchLocal _value,
      $Res Function(ScheduleEventFetchLocal) _then)
      : super(_value, (v) => _then(v as ScheduleEventFetchLocal));

  @override
  ScheduleEventFetchLocal get _value => super._value as ScheduleEventFetchLocal;
}

/// @nodoc

@With(_DataEmitter)
@With(_ErrorEmitter)
class _$ScheduleEventFetchLocal extends ScheduleEventFetchLocal
    with _DataEmitter, _ErrorEmitter {
  const _$ScheduleEventFetchLocal() : super._();

  @override
  String toString() {
    return 'ScheduleEvent.fetchLocal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScheduleEventFetchLocal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocal,
    required TResult Function() fetchRemote,
    required TResult Function(Schedule schedule) save,
    required TResult Function(int attempt) initialRemoteFetch,
    required TResult Function() periodicRemoteFetch,
  }) {
    return fetchLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
  }) {
    return fetchLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (fetchLocal != null) {
      return fetchLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventFetchLocal value) fetchLocal,
    required TResult Function(ScheduleEventFetchRemote value) fetchRemote,
    required TResult Function(ScheduleEventSave value) save,
    required TResult Function(ScheduleEventInitialRemoteFetch value)
        initialRemoteFetch,
    required TResult Function(ScheduleEventPeriodicRemoteFetch value)
        periodicRemoteFetch,
  }) {
    return fetchLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
  }) {
    return fetchLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (fetchLocal != null) {
      return fetchLocal(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventFetchLocal extends ScheduleEvent
    implements _DataEmitter, _ErrorEmitter {
  const factory ScheduleEventFetchLocal() = _$ScheduleEventFetchLocal;
  const ScheduleEventFetchLocal._() : super._();
}

/// @nodoc
abstract class $ScheduleEventFetchRemoteCopyWith<$Res> {
  factory $ScheduleEventFetchRemoteCopyWith(ScheduleEventFetchRemote value,
          $Res Function(ScheduleEventFetchRemote) then) =
      _$ScheduleEventFetchRemoteCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleEventFetchRemoteCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventFetchRemoteCopyWith<$Res> {
  _$ScheduleEventFetchRemoteCopyWithImpl(ScheduleEventFetchRemote _value,
      $Res Function(ScheduleEventFetchRemote) _then)
      : super(_value, (v) => _then(v as ScheduleEventFetchRemote));

  @override
  ScheduleEventFetchRemote get _value =>
      super._value as ScheduleEventFetchRemote;
}

/// @nodoc

@With(_DataEmitter)
@With(_CantFindEmitter)
@With(_ErrorEmitter)
@With(_SaveCaller)
class _$ScheduleEventFetchRemote extends ScheduleEventFetchRemote
    with _DataEmitter, _CantFindEmitter, _ErrorEmitter, _SaveCaller {
  const _$ScheduleEventFetchRemote() : super._();

  @override
  String toString() {
    return 'ScheduleEvent.fetchRemote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScheduleEventFetchRemote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocal,
    required TResult Function() fetchRemote,
    required TResult Function(Schedule schedule) save,
    required TResult Function(int attempt) initialRemoteFetch,
    required TResult Function() periodicRemoteFetch,
  }) {
    return fetchRemote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
  }) {
    return fetchRemote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (fetchRemote != null) {
      return fetchRemote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventFetchLocal value) fetchLocal,
    required TResult Function(ScheduleEventFetchRemote value) fetchRemote,
    required TResult Function(ScheduleEventSave value) save,
    required TResult Function(ScheduleEventInitialRemoteFetch value)
        initialRemoteFetch,
    required TResult Function(ScheduleEventPeriodicRemoteFetch value)
        periodicRemoteFetch,
  }) {
    return fetchRemote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
  }) {
    return fetchRemote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (fetchRemote != null) {
      return fetchRemote(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventFetchRemote extends ScheduleEvent
    implements _DataEmitter, _CantFindEmitter, _ErrorEmitter, _SaveCaller {
  const factory ScheduleEventFetchRemote() = _$ScheduleEventFetchRemote;
  const ScheduleEventFetchRemote._() : super._();
}

/// @nodoc
abstract class $ScheduleEventSaveCopyWith<$Res> {
  factory $ScheduleEventSaveCopyWith(
          ScheduleEventSave value, $Res Function(ScheduleEventSave) then) =
      _$ScheduleEventSaveCopyWithImpl<$Res>;
  $Res call({Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$ScheduleEventSaveCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventSaveCopyWith<$Res> {
  _$ScheduleEventSaveCopyWithImpl(
      ScheduleEventSave _value, $Res Function(ScheduleEventSave) _then)
      : super(_value, (v) => _then(v as ScheduleEventSave));

  @override
  ScheduleEventSave get _value => super._value as ScheduleEventSave;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(ScheduleEventSave(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }

  @override
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc

@With(_DataEmitter)
@With(_CantFindEmitter)
@With(_ErrorEmitter)
class _$ScheduleEventSave extends ScheduleEventSave
    with _DataEmitter, _CantFindEmitter, _ErrorEmitter {
  const _$ScheduleEventSave({required this.schedule}) : super._();

  @override
  final Schedule schedule;

  @override
  String toString() {
    return 'ScheduleEvent.save(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleEventSave &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedule);

  @JsonKey(ignore: true)
  @override
  $ScheduleEventSaveCopyWith<ScheduleEventSave> get copyWith =>
      _$ScheduleEventSaveCopyWithImpl<ScheduleEventSave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocal,
    required TResult Function() fetchRemote,
    required TResult Function(Schedule schedule) save,
    required TResult Function(int attempt) initialRemoteFetch,
    required TResult Function() periodicRemoteFetch,
  }) {
    return save(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
  }) {
    return save?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventFetchLocal value) fetchLocal,
    required TResult Function(ScheduleEventFetchRemote value) fetchRemote,
    required TResult Function(ScheduleEventSave value) save,
    required TResult Function(ScheduleEventInitialRemoteFetch value)
        initialRemoteFetch,
    required TResult Function(ScheduleEventPeriodicRemoteFetch value)
        periodicRemoteFetch,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventSave extends ScheduleEvent
    implements _DataEmitter, _CantFindEmitter, _ErrorEmitter {
  const factory ScheduleEventSave({required Schedule schedule}) =
      _$ScheduleEventSave;
  const ScheduleEventSave._() : super._();

  Schedule get schedule => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleEventSaveCopyWith<ScheduleEventSave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventInitialRemoteFetchCopyWith<$Res> {
  factory $ScheduleEventInitialRemoteFetchCopyWith(
          ScheduleEventInitialRemoteFetch value,
          $Res Function(ScheduleEventInitialRemoteFetch) then) =
      _$ScheduleEventInitialRemoteFetchCopyWithImpl<$Res>;
  $Res call({int attempt});
}

/// @nodoc
class _$ScheduleEventInitialRemoteFetchCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventInitialRemoteFetchCopyWith<$Res> {
  _$ScheduleEventInitialRemoteFetchCopyWithImpl(
      ScheduleEventInitialRemoteFetch _value,
      $Res Function(ScheduleEventInitialRemoteFetch) _then)
      : super(_value, (v) => _then(v as ScheduleEventInitialRemoteFetch));

  @override
  ScheduleEventInitialRemoteFetch get _value =>
      super._value as ScheduleEventInitialRemoteFetch;

  @override
  $Res call({
    Object? attempt = freezed,
  }) {
    return _then(ScheduleEventInitialRemoteFetch(
      attempt: attempt == freezed
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@With(_InitialRemoteFetchCaller)
@With(_PeriodicRemoteFetchCaller)
class _$ScheduleEventInitialRemoteFetch extends ScheduleEventInitialRemoteFetch
    with _InitialRemoteFetchCaller, _PeriodicRemoteFetchCaller {
  const _$ScheduleEventInitialRemoteFetch({this.attempt = 0}) : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int attempt;

  @override
  String toString() {
    return 'ScheduleEvent.initialRemoteFetch(attempt: $attempt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleEventInitialRemoteFetch &&
            (identical(other.attempt, attempt) ||
                const DeepCollectionEquality().equals(other.attempt, attempt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(attempt);

  @JsonKey(ignore: true)
  @override
  $ScheduleEventInitialRemoteFetchCopyWith<ScheduleEventInitialRemoteFetch>
      get copyWith => _$ScheduleEventInitialRemoteFetchCopyWithImpl<
          ScheduleEventInitialRemoteFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocal,
    required TResult Function() fetchRemote,
    required TResult Function(Schedule schedule) save,
    required TResult Function(int attempt) initialRemoteFetch,
    required TResult Function() periodicRemoteFetch,
  }) {
    return initialRemoteFetch(attempt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
  }) {
    return initialRemoteFetch?.call(attempt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (initialRemoteFetch != null) {
      return initialRemoteFetch(attempt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventFetchLocal value) fetchLocal,
    required TResult Function(ScheduleEventFetchRemote value) fetchRemote,
    required TResult Function(ScheduleEventSave value) save,
    required TResult Function(ScheduleEventInitialRemoteFetch value)
        initialRemoteFetch,
    required TResult Function(ScheduleEventPeriodicRemoteFetch value)
        periodicRemoteFetch,
  }) {
    return initialRemoteFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
  }) {
    return initialRemoteFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (initialRemoteFetch != null) {
      return initialRemoteFetch(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventInitialRemoteFetch extends ScheduleEvent
    implements _InitialRemoteFetchCaller, _PeriodicRemoteFetchCaller {
  const factory ScheduleEventInitialRemoteFetch({int attempt}) =
      _$ScheduleEventInitialRemoteFetch;
  const ScheduleEventInitialRemoteFetch._() : super._();

  int get attempt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleEventInitialRemoteFetchCopyWith<ScheduleEventInitialRemoteFetch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventPeriodicRemoteFetchCopyWith<$Res> {
  factory $ScheduleEventPeriodicRemoteFetchCopyWith(
          ScheduleEventPeriodicRemoteFetch value,
          $Res Function(ScheduleEventPeriodicRemoteFetch) then) =
      _$ScheduleEventPeriodicRemoteFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleEventPeriodicRemoteFetchCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventPeriodicRemoteFetchCopyWith<$Res> {
  _$ScheduleEventPeriodicRemoteFetchCopyWithImpl(
      ScheduleEventPeriodicRemoteFetch _value,
      $Res Function(ScheduleEventPeriodicRemoteFetch) _then)
      : super(_value, (v) => _then(v as ScheduleEventPeriodicRemoteFetch));

  @override
  ScheduleEventPeriodicRemoteFetch get _value =>
      super._value as ScheduleEventPeriodicRemoteFetch;
}

/// @nodoc

@With(_PeriodicRemoteFetchCaller)
class _$ScheduleEventPeriodicRemoteFetch
    extends ScheduleEventPeriodicRemoteFetch with _PeriodicRemoteFetchCaller {
  const _$ScheduleEventPeriodicRemoteFetch() : super._();

  @override
  String toString() {
    return 'ScheduleEvent.periodicRemoteFetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleEventPeriodicRemoteFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLocal,
    required TResult Function() fetchRemote,
    required TResult Function(Schedule schedule) save,
    required TResult Function(int attempt) initialRemoteFetch,
    required TResult Function() periodicRemoteFetch,
  }) {
    return periodicRemoteFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
  }) {
    return periodicRemoteFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLocal,
    TResult Function()? fetchRemote,
    TResult Function(Schedule schedule)? save,
    TResult Function(int attempt)? initialRemoteFetch,
    TResult Function()? periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (periodicRemoteFetch != null) {
      return periodicRemoteFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleEventFetchLocal value) fetchLocal,
    required TResult Function(ScheduleEventFetchRemote value) fetchRemote,
    required TResult Function(ScheduleEventSave value) save,
    required TResult Function(ScheduleEventInitialRemoteFetch value)
        initialRemoteFetch,
    required TResult Function(ScheduleEventPeriodicRemoteFetch value)
        periodicRemoteFetch,
  }) {
    return periodicRemoteFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
  }) {
    return periodicRemoteFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleEventFetchLocal value)? fetchLocal,
    TResult Function(ScheduleEventFetchRemote value)? fetchRemote,
    TResult Function(ScheduleEventSave value)? save,
    TResult Function(ScheduleEventInitialRemoteFetch value)? initialRemoteFetch,
    TResult Function(ScheduleEventPeriodicRemoteFetch value)?
        periodicRemoteFetch,
    required TResult orElse(),
  }) {
    if (periodicRemoteFetch != null) {
      return periodicRemoteFetch(this);
    }
    return orElse();
  }
}

abstract class ScheduleEventPeriodicRemoteFetch extends ScheduleEvent
    implements _PeriodicRemoteFetchCaller {
  const factory ScheduleEventPeriodicRemoteFetch() =
      _$ScheduleEventPeriodicRemoteFetch;
  const ScheduleEventPeriodicRemoteFetch._() : super._();
}

/// @nodoc
class _$ScheduleStateTearOff {
  const _$ScheduleStateTearOff();

  ScheduleStateLoading loading() {
    return const ScheduleStateLoading();
  }

  ScheduleStateCantFind cantFind() {
    return const ScheduleStateCantFind();
  }

  ScheduleStateData data({required Schedule schedule}) {
    return ScheduleStateData(
      schedule: schedule,
    );
  }

  ScheduleStateError error({Schedule? schedule}) {
    return ScheduleStateError(
      schedule: schedule,
    );
  }
}

/// @nodoc
const $ScheduleState = _$ScheduleStateTearOff();

/// @nodoc
mixin _$ScheduleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() cantFind,
    required TResult Function(Schedule schedule) data,
    required TResult Function(Schedule? schedule) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateLoading value) loading,
    required TResult Function(ScheduleStateCantFind value) cantFind,
    required TResult Function(ScheduleStateData value) data,
    required TResult Function(ScheduleStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;
}

/// @nodoc
abstract class $ScheduleStateLoadingCopyWith<$Res> {
  factory $ScheduleStateLoadingCopyWith(ScheduleStateLoading value,
          $Res Function(ScheduleStateLoading) then) =
      _$ScheduleStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleStateLoadingCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateLoadingCopyWith<$Res> {
  _$ScheduleStateLoadingCopyWithImpl(
      ScheduleStateLoading _value, $Res Function(ScheduleStateLoading) _then)
      : super(_value, (v) => _then(v as ScheduleStateLoading));

  @override
  ScheduleStateLoading get _value => super._value as ScheduleStateLoading;
}

/// @nodoc

class _$ScheduleStateLoading extends ScheduleStateLoading {
  const _$ScheduleStateLoading() : super._();

  @override
  String toString() {
    return 'ScheduleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScheduleStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() cantFind,
    required TResult Function(Schedule schedule) data,
    required TResult Function(Schedule? schedule) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateLoading value) loading,
    required TResult Function(ScheduleStateCantFind value) cantFind,
    required TResult Function(ScheduleStateData value) data,
    required TResult Function(ScheduleStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateLoading extends ScheduleState {
  const factory ScheduleStateLoading() = _$ScheduleStateLoading;
  const ScheduleStateLoading._() : super._();
}

/// @nodoc
abstract class $ScheduleStateCantFindCopyWith<$Res> {
  factory $ScheduleStateCantFindCopyWith(ScheduleStateCantFind value,
          $Res Function(ScheduleStateCantFind) then) =
      _$ScheduleStateCantFindCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleStateCantFindCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCantFindCopyWith<$Res> {
  _$ScheduleStateCantFindCopyWithImpl(
      ScheduleStateCantFind _value, $Res Function(ScheduleStateCantFind) _then)
      : super(_value, (v) => _then(v as ScheduleStateCantFind));

  @override
  ScheduleStateCantFind get _value => super._value as ScheduleStateCantFind;
}

/// @nodoc

class _$ScheduleStateCantFind extends ScheduleStateCantFind {
  const _$ScheduleStateCantFind() : super._();

  @override
  String toString() {
    return 'ScheduleState.cantFind()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScheduleStateCantFind);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() cantFind,
    required TResult Function(Schedule schedule) data,
    required TResult Function(Schedule? schedule) error,
  }) {
    return cantFind();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
  }) {
    return cantFind?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
    required TResult orElse(),
  }) {
    if (cantFind != null) {
      return cantFind();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateLoading value) loading,
    required TResult Function(ScheduleStateCantFind value) cantFind,
    required TResult Function(ScheduleStateData value) data,
    required TResult Function(ScheduleStateError value) error,
  }) {
    return cantFind(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
  }) {
    return cantFind?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
    required TResult orElse(),
  }) {
    if (cantFind != null) {
      return cantFind(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateCantFind extends ScheduleState {
  const factory ScheduleStateCantFind() = _$ScheduleStateCantFind;
  const ScheduleStateCantFind._() : super._();
}

/// @nodoc
abstract class $ScheduleStateDataCopyWith<$Res> {
  factory $ScheduleStateDataCopyWith(
          ScheduleStateData value, $Res Function(ScheduleStateData) then) =
      _$ScheduleStateDataCopyWithImpl<$Res>;
  $Res call({Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$ScheduleStateDataCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateDataCopyWith<$Res> {
  _$ScheduleStateDataCopyWithImpl(
      ScheduleStateData _value, $Res Function(ScheduleStateData) _then)
      : super(_value, (v) => _then(v as ScheduleStateData));

  @override
  ScheduleStateData get _value => super._value as ScheduleStateData;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(ScheduleStateData(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }

  @override
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc

class _$ScheduleStateData extends ScheduleStateData {
  const _$ScheduleStateData({required this.schedule}) : super._();

  @override
  final Schedule schedule;

  @override
  String toString() {
    return 'ScheduleState.data(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleStateData &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedule);

  @JsonKey(ignore: true)
  @override
  $ScheduleStateDataCopyWith<ScheduleStateData> get copyWith =>
      _$ScheduleStateDataCopyWithImpl<ScheduleStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() cantFind,
    required TResult Function(Schedule schedule) data,
    required TResult Function(Schedule? schedule) error,
  }) {
    return data(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
  }) {
    return data?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateLoading value) loading,
    required TResult Function(ScheduleStateCantFind value) cantFind,
    required TResult Function(ScheduleStateData value) data,
    required TResult Function(ScheduleStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateData extends ScheduleState {
  const factory ScheduleStateData({required Schedule schedule}) =
      _$ScheduleStateData;
  const ScheduleStateData._() : super._();

  Schedule get schedule => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleStateDataCopyWith<ScheduleStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateErrorCopyWith<$Res> {
  factory $ScheduleStateErrorCopyWith(
          ScheduleStateError value, $Res Function(ScheduleStateError) then) =
      _$ScheduleStateErrorCopyWithImpl<$Res>;
  $Res call({Schedule? schedule});

  $ScheduleCopyWith<$Res>? get schedule;
}

/// @nodoc
class _$ScheduleStateErrorCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateErrorCopyWith<$Res> {
  _$ScheduleStateErrorCopyWithImpl(
      ScheduleStateError _value, $Res Function(ScheduleStateError) _then)
      : super(_value, (v) => _then(v as ScheduleStateError));

  @override
  ScheduleStateError get _value => super._value as ScheduleStateError;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(ScheduleStateError(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule?,
    ));
  }

  @override
  $ScheduleCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc

class _$ScheduleStateError extends ScheduleStateError {
  const _$ScheduleStateError({this.schedule}) : super._();

  @override
  final Schedule? schedule;

  @override
  String toString() {
    return 'ScheduleState.error(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleStateError &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedule);

  @JsonKey(ignore: true)
  @override
  $ScheduleStateErrorCopyWith<ScheduleStateError> get copyWith =>
      _$ScheduleStateErrorCopyWithImpl<ScheduleStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() cantFind,
    required TResult Function(Schedule schedule) data,
    required TResult Function(Schedule? schedule) error,
  }) {
    return error(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
  }) {
    return error?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? cantFind,
    TResult Function(Schedule schedule)? data,
    TResult Function(Schedule? schedule)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleStateLoading value) loading,
    required TResult Function(ScheduleStateCantFind value) cantFind,
    required TResult Function(ScheduleStateData value) data,
    required TResult Function(ScheduleStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleStateLoading value)? loading,
    TResult Function(ScheduleStateCantFind value)? cantFind,
    TResult Function(ScheduleStateData value)? data,
    TResult Function(ScheduleStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ScheduleStateError extends ScheduleState {
  const factory ScheduleStateError({Schedule? schedule}) = _$ScheduleStateError;
  const ScheduleStateError._() : super._();

  Schedule? get schedule => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleStateErrorCopyWith<ScheduleStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
