// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermissionEventTearOff {
  const _$PermissionEventTearOff();

  PermissionEventUncheck uncheck() {
    return const PermissionEventUncheck();
  }

  PermissionEventReverseCheck reverseCheck() {
    return const PermissionEventReverseCheck();
  }

  PermissionEventConfirm confirm() {
    return const PermissionEventConfirm();
  }
}

/// @nodoc
const $PermissionEvent = _$PermissionEventTearOff();

/// @nodoc
mixin _$PermissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uncheck,
    required TResult Function() reverseCheck,
    required TResult Function() confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionEventUncheck value) uncheck,
    required TResult Function(PermissionEventReverseCheck value) reverseCheck,
    required TResult Function(PermissionEventConfirm value) confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionEventCopyWith<$Res> {
  factory $PermissionEventCopyWith(
          PermissionEvent value, $Res Function(PermissionEvent) then) =
      _$PermissionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionEventCopyWithImpl<$Res>
    implements $PermissionEventCopyWith<$Res> {
  _$PermissionEventCopyWithImpl(this._value, this._then);

  final PermissionEvent _value;
  // ignore: unused_field
  final $Res Function(PermissionEvent) _then;
}

/// @nodoc
abstract class $PermissionEventUncheckCopyWith<$Res> {
  factory $PermissionEventUncheckCopyWith(PermissionEventUncheck value,
          $Res Function(PermissionEventUncheck) then) =
      _$PermissionEventUncheckCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionEventUncheckCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res>
    implements $PermissionEventUncheckCopyWith<$Res> {
  _$PermissionEventUncheckCopyWithImpl(PermissionEventUncheck _value,
      $Res Function(PermissionEventUncheck) _then)
      : super(_value, (v) => _then(v as PermissionEventUncheck));

  @override
  PermissionEventUncheck get _value => super._value as PermissionEventUncheck;
}

/// @nodoc

@With(_NotConfirmedEmitter)
class _$PermissionEventUncheck extends PermissionEventUncheck
    with _NotConfirmedEmitter {
  const _$PermissionEventUncheck() : super._();

  @override
  String toString() {
    return 'PermissionEvent.uncheck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionEventUncheck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uncheck,
    required TResult Function() reverseCheck,
    required TResult Function() confirm,
  }) {
    return uncheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
  }) {
    return uncheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
    required TResult orElse(),
  }) {
    if (uncheck != null) {
      return uncheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionEventUncheck value) uncheck,
    required TResult Function(PermissionEventReverseCheck value) reverseCheck,
    required TResult Function(PermissionEventConfirm value) confirm,
  }) {
    return uncheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
  }) {
    return uncheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
    required TResult orElse(),
  }) {
    if (uncheck != null) {
      return uncheck(this);
    }
    return orElse();
  }
}

abstract class PermissionEventUncheck extends PermissionEvent
    implements _NotConfirmedEmitter {
  const factory PermissionEventUncheck() = _$PermissionEventUncheck;
  const PermissionEventUncheck._() : super._();
}

/// @nodoc
abstract class $PermissionEventReverseCheckCopyWith<$Res> {
  factory $PermissionEventReverseCheckCopyWith(
          PermissionEventReverseCheck value,
          $Res Function(PermissionEventReverseCheck) then) =
      _$PermissionEventReverseCheckCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionEventReverseCheckCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res>
    implements $PermissionEventReverseCheckCopyWith<$Res> {
  _$PermissionEventReverseCheckCopyWithImpl(PermissionEventReverseCheck _value,
      $Res Function(PermissionEventReverseCheck) _then)
      : super(_value, (v) => _then(v as PermissionEventReverseCheck));

  @override
  PermissionEventReverseCheck get _value =>
      super._value as PermissionEventReverseCheck;
}

/// @nodoc

@With(_NotConfirmedEmitter)
class _$PermissionEventReverseCheck extends PermissionEventReverseCheck
    with _NotConfirmedEmitter {
  const _$PermissionEventReverseCheck() : super._();

  @override
  String toString() {
    return 'PermissionEvent.reverseCheck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionEventReverseCheck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uncheck,
    required TResult Function() reverseCheck,
    required TResult Function() confirm,
  }) {
    return reverseCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
  }) {
    return reverseCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
    required TResult orElse(),
  }) {
    if (reverseCheck != null) {
      return reverseCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionEventUncheck value) uncheck,
    required TResult Function(PermissionEventReverseCheck value) reverseCheck,
    required TResult Function(PermissionEventConfirm value) confirm,
  }) {
    return reverseCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
  }) {
    return reverseCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
    required TResult orElse(),
  }) {
    if (reverseCheck != null) {
      return reverseCheck(this);
    }
    return orElse();
  }
}

abstract class PermissionEventReverseCheck extends PermissionEvent
    implements _NotConfirmedEmitter {
  const factory PermissionEventReverseCheck() = _$PermissionEventReverseCheck;
  const PermissionEventReverseCheck._() : super._();
}

/// @nodoc
abstract class $PermissionEventConfirmCopyWith<$Res> {
  factory $PermissionEventConfirmCopyWith(PermissionEventConfirm value,
          $Res Function(PermissionEventConfirm) then) =
      _$PermissionEventConfirmCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionEventConfirmCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res>
    implements $PermissionEventConfirmCopyWith<$Res> {
  _$PermissionEventConfirmCopyWithImpl(PermissionEventConfirm _value,
      $Res Function(PermissionEventConfirm) _then)
      : super(_value, (v) => _then(v as PermissionEventConfirm));

  @override
  PermissionEventConfirm get _value => super._value as PermissionEventConfirm;
}

/// @nodoc

@Implements(_ICheckedContainer)
@With(_AlwaysChecked)
@With(_NotConfirmedEmitter)
@With(_ConfirmEmitter)
@With(_ErrorEmitter)
class _$PermissionEventConfirm extends PermissionEventConfirm
    with _AlwaysChecked, _NotConfirmedEmitter, _ConfirmEmitter, _ErrorEmitter {
  const _$PermissionEventConfirm() : super._();

  @override
  String toString() {
    return 'PermissionEvent.confirm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionEventConfirm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uncheck,
    required TResult Function() reverseCheck,
    required TResult Function() confirm,
  }) {
    return confirm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
  }) {
    return confirm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uncheck,
    TResult Function()? reverseCheck,
    TResult Function()? confirm,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionEventUncheck value) uncheck,
    required TResult Function(PermissionEventReverseCheck value) reverseCheck,
    required TResult Function(PermissionEventConfirm value) confirm,
  }) {
    return confirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
  }) {
    return confirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionEventUncheck value)? uncheck,
    TResult Function(PermissionEventReverseCheck value)? reverseCheck,
    TResult Function(PermissionEventConfirm value)? confirm,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(this);
    }
    return orElse();
  }
}

abstract class PermissionEventConfirm extends PermissionEvent
    implements
        _ICheckedContainer,
        _AlwaysChecked,
        _NotConfirmedEmitter,
        _ConfirmEmitter,
        _ErrorEmitter {
  const factory PermissionEventConfirm() = _$PermissionEventConfirm;
  const PermissionEventConfirm._() : super._();
}

/// @nodoc
class _$PermissionStateTearOff {
  const _$PermissionStateTearOff();

  PermissionStateNotConfirmed notConfirmed({required bool checked}) {
    return PermissionStateNotConfirmed(
      checked: checked,
    );
  }

  PermissionStateConfirmed confirmed() {
    return const PermissionStateConfirmed();
  }

  PermissionStateError error() {
    return const PermissionStateError();
  }
}

/// @nodoc
const $PermissionState = _$PermissionStateTearOff();

/// @nodoc
mixin _$PermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checked) notConfirmed,
    required TResult Function() confirmed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionStateNotConfirmed value) notConfirmed,
    required TResult Function(PermissionStateConfirmed value) confirmed,
    required TResult Function(PermissionStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateCopyWith<$Res> {
  factory $PermissionStateCopyWith(
          PermissionState value, $Res Function(PermissionState) then) =
      _$PermissionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateCopyWith<$Res> {
  _$PermissionStateCopyWithImpl(this._value, this._then);

  final PermissionState _value;
  // ignore: unused_field
  final $Res Function(PermissionState) _then;
}

/// @nodoc
abstract class $PermissionStateNotConfirmedCopyWith<$Res> {
  factory $PermissionStateNotConfirmedCopyWith(
          PermissionStateNotConfirmed value,
          $Res Function(PermissionStateNotConfirmed) then) =
      _$PermissionStateNotConfirmedCopyWithImpl<$Res>;
  $Res call({bool checked});
}

/// @nodoc
class _$PermissionStateNotConfirmedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateNotConfirmedCopyWith<$Res> {
  _$PermissionStateNotConfirmedCopyWithImpl(PermissionStateNotConfirmed _value,
      $Res Function(PermissionStateNotConfirmed) _then)
      : super(_value, (v) => _then(v as PermissionStateNotConfirmed));

  @override
  PermissionStateNotConfirmed get _value =>
      super._value as PermissionStateNotConfirmed;

  @override
  $Res call({
    Object? checked = freezed,
  }) {
    return _then(PermissionStateNotConfirmed(
      checked: checked == freezed
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PermissionStateNotConfirmed extends PermissionStateNotConfirmed {
  const _$PermissionStateNotConfirmed({required this.checked}) : super._();

  @override
  final bool checked;

  @override
  String toString() {
    return 'PermissionState.notConfirmed(checked: $checked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PermissionStateNotConfirmed &&
            (identical(other.checked, checked) ||
                const DeepCollectionEquality().equals(other.checked, checked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(checked);

  @JsonKey(ignore: true)
  @override
  $PermissionStateNotConfirmedCopyWith<PermissionStateNotConfirmed>
      get copyWith => _$PermissionStateNotConfirmedCopyWithImpl<
          PermissionStateNotConfirmed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checked) notConfirmed,
    required TResult Function() confirmed,
    required TResult Function() error,
  }) {
    return notConfirmed(checked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
  }) {
    return notConfirmed?.call(checked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notConfirmed != null) {
      return notConfirmed(checked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionStateNotConfirmed value) notConfirmed,
    required TResult Function(PermissionStateConfirmed value) confirmed,
    required TResult Function(PermissionStateError value) error,
  }) {
    return notConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
  }) {
    return notConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
    required TResult orElse(),
  }) {
    if (notConfirmed != null) {
      return notConfirmed(this);
    }
    return orElse();
  }
}

abstract class PermissionStateNotConfirmed extends PermissionState {
  const factory PermissionStateNotConfirmed({required bool checked}) =
      _$PermissionStateNotConfirmed;
  const PermissionStateNotConfirmed._() : super._();

  bool get checked => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionStateNotConfirmedCopyWith<PermissionStateNotConfirmed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateConfirmedCopyWith<$Res> {
  factory $PermissionStateConfirmedCopyWith(PermissionStateConfirmed value,
          $Res Function(PermissionStateConfirmed) then) =
      _$PermissionStateConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionStateConfirmedCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateConfirmedCopyWith<$Res> {
  _$PermissionStateConfirmedCopyWithImpl(PermissionStateConfirmed _value,
      $Res Function(PermissionStateConfirmed) _then)
      : super(_value, (v) => _then(v as PermissionStateConfirmed));

  @override
  PermissionStateConfirmed get _value =>
      super._value as PermissionStateConfirmed;
}

/// @nodoc

@With(_AlwaysChecked)
class _$PermissionStateConfirmed extends PermissionStateConfirmed
    with _AlwaysChecked {
  const _$PermissionStateConfirmed() : super._();

  @override
  String toString() {
    return 'PermissionState.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionStateConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checked) notConfirmed,
    required TResult Function() confirmed,
    required TResult Function() error,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionStateNotConfirmed value) notConfirmed,
    required TResult Function(PermissionStateConfirmed value) confirmed,
    required TResult Function(PermissionStateError value) error,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class PermissionStateConfirmed extends PermissionState
    implements _AlwaysChecked {
  const factory PermissionStateConfirmed() = _$PermissionStateConfirmed;
  const PermissionStateConfirmed._() : super._();
}

/// @nodoc
abstract class $PermissionStateErrorCopyWith<$Res> {
  factory $PermissionStateErrorCopyWith(PermissionStateError value,
          $Res Function(PermissionStateError) then) =
      _$PermissionStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionStateErrorCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res>
    implements $PermissionStateErrorCopyWith<$Res> {
  _$PermissionStateErrorCopyWithImpl(
      PermissionStateError _value, $Res Function(PermissionStateError) _then)
      : super(_value, (v) => _then(v as PermissionStateError));

  @override
  PermissionStateError get _value => super._value as PermissionStateError;
}

/// @nodoc

@With(_AlwaysChecked)
class _$PermissionStateError extends PermissionStateError with _AlwaysChecked {
  const _$PermissionStateError() : super._();

  @override
  String toString() {
    return 'PermissionState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool checked) notConfirmed,
    required TResult Function() confirmed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool checked)? notConfirmed,
    TResult Function()? confirmed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionStateNotConfirmed value) notConfirmed,
    required TResult Function(PermissionStateConfirmed value) confirmed,
    required TResult Function(PermissionStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionStateNotConfirmed value)? notConfirmed,
    TResult Function(PermissionStateConfirmed value)? confirmed,
    TResult Function(PermissionStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PermissionStateError extends PermissionState
    implements _AlwaysChecked {
  const factory PermissionStateError() = _$PermissionStateError;
  const PermissionStateError._() : super._();
}
