// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_schedule_handler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeleteScheduleEventTearOff {
  const _$DeleteScheduleEventTearOff();

  _DeleteScheduleEvent call({required String uuid}) {
    return _DeleteScheduleEvent(
      uuid: uuid,
    );
  }
}

/// @nodoc
const $DeleteScheduleEvent = _$DeleteScheduleEventTearOff();

/// @nodoc
mixin _$DeleteScheduleEvent {
  String get uuid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteScheduleEventCopyWith<DeleteScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteScheduleEventCopyWith<$Res> {
  factory $DeleteScheduleEventCopyWith(
          DeleteScheduleEvent value, $Res Function(DeleteScheduleEvent) then) =
      _$DeleteScheduleEventCopyWithImpl<$Res>;
  $Res call({String uuid});
}

/// @nodoc
class _$DeleteScheduleEventCopyWithImpl<$Res>
    implements $DeleteScheduleEventCopyWith<$Res> {
  _$DeleteScheduleEventCopyWithImpl(this._value, this._then);

  final DeleteScheduleEvent _value;
  // ignore: unused_field
  final $Res Function(DeleteScheduleEvent) _then;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeleteScheduleEventCopyWith<$Res>
    implements $DeleteScheduleEventCopyWith<$Res> {
  factory _$DeleteScheduleEventCopyWith(_DeleteScheduleEvent value,
          $Res Function(_DeleteScheduleEvent) then) =
      __$DeleteScheduleEventCopyWithImpl<$Res>;
  @override
  $Res call({String uuid});
}

/// @nodoc
class __$DeleteScheduleEventCopyWithImpl<$Res>
    extends _$DeleteScheduleEventCopyWithImpl<$Res>
    implements _$DeleteScheduleEventCopyWith<$Res> {
  __$DeleteScheduleEventCopyWithImpl(
      _DeleteScheduleEvent _value, $Res Function(_DeleteScheduleEvent) _then)
      : super(_value, (v) => _then(v as _DeleteScheduleEvent));

  @override
  _DeleteScheduleEvent get _value => super._value as _DeleteScheduleEvent;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(_DeleteScheduleEvent(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteScheduleEvent implements _DeleteScheduleEvent {
  const _$_DeleteScheduleEvent({required this.uuid});

  @override
  final String uuid;

  @override
  String toString() {
    return 'DeleteScheduleEvent(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteScheduleEvent &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$DeleteScheduleEventCopyWith<_DeleteScheduleEvent> get copyWith =>
      __$DeleteScheduleEventCopyWithImpl<_DeleteScheduleEvent>(
          this, _$identity);
}

abstract class _DeleteScheduleEvent implements DeleteScheduleEvent {
  const factory _DeleteScheduleEvent({required String uuid}) =
      _$_DeleteScheduleEvent;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteScheduleEventCopyWith<_DeleteScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
