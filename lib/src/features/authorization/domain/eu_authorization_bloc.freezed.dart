// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eu_authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EuAuthorizationEventTearOff {
  const _$EuAuthorizationEventTearOff();

  EuAuthorizationEventInitialUpdateInfo initialUpdateInfo() {
    return const EuAuthorizationEventInitialUpdateInfo();
  }

  EuAuthorizationEventUpdateInfo updateInfo({int attempt = 0}) {
    return EuAuthorizationEventUpdateInfo(
      attempt: attempt,
    );
  }
}

/// @nodoc
const $EuAuthorizationEvent = _$EuAuthorizationEventTearOff();

/// @nodoc
mixin _$EuAuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialUpdateInfo,
    required TResult Function(int attempt) updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialUpdateInfo,
    TResult Function(int attempt)? updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialUpdateInfo,
    TResult Function(int attempt)? updateInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EuAuthorizationEventInitialUpdateInfo value)
        initialUpdateInfo,
    required TResult Function(EuAuthorizationEventUpdateInfo value) updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationEventInitialUpdateInfo value)?
        initialUpdateInfo,
    TResult Function(EuAuthorizationEventUpdateInfo value)? updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationEventInitialUpdateInfo value)?
        initialUpdateInfo,
    TResult Function(EuAuthorizationEventUpdateInfo value)? updateInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EuAuthorizationEventCopyWith<$Res> {
  factory $EuAuthorizationEventCopyWith(EuAuthorizationEvent value,
          $Res Function(EuAuthorizationEvent) then) =
      _$EuAuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EuAuthorizationEventCopyWithImpl<$Res>
    implements $EuAuthorizationEventCopyWith<$Res> {
  _$EuAuthorizationEventCopyWithImpl(this._value, this._then);

  final EuAuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(EuAuthorizationEvent) _then;
}

/// @nodoc
abstract class $EuAuthorizationEventInitialUpdateInfoCopyWith<$Res> {
  factory $EuAuthorizationEventInitialUpdateInfoCopyWith(
          EuAuthorizationEventInitialUpdateInfo value,
          $Res Function(EuAuthorizationEventInitialUpdateInfo) then) =
      _$EuAuthorizationEventInitialUpdateInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$EuAuthorizationEventInitialUpdateInfoCopyWithImpl<$Res>
    extends _$EuAuthorizationEventCopyWithImpl<$Res>
    implements $EuAuthorizationEventInitialUpdateInfoCopyWith<$Res> {
  _$EuAuthorizationEventInitialUpdateInfoCopyWithImpl(
      EuAuthorizationEventInitialUpdateInfo _value,
      $Res Function(EuAuthorizationEventInitialUpdateInfo) _then)
      : super(_value, (v) => _then(v as EuAuthorizationEventInitialUpdateInfo));

  @override
  EuAuthorizationEventInitialUpdateInfo get _value =>
      super._value as EuAuthorizationEventInitialUpdateInfo;
}

/// @nodoc

@With(_LogsInEmitter)
@With(_AuthorizedEmitter)
@With(_ErrorEmitter)
@With(_LoginCaller)
class _$EuAuthorizationEventInitialUpdateInfo
    extends EuAuthorizationEventInitialUpdateInfo
    with _LogsInEmitter, _AuthorizedEmitter, _ErrorEmitter, _LoginCaller {
  const _$EuAuthorizationEventInitialUpdateInfo() : super._();

  @override
  String toString() {
    return 'EuAuthorizationEvent.initialUpdateInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EuAuthorizationEventInitialUpdateInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialUpdateInfo,
    required TResult Function(int attempt) updateInfo,
  }) {
    return initialUpdateInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialUpdateInfo,
    TResult Function(int attempt)? updateInfo,
  }) {
    return initialUpdateInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialUpdateInfo,
    TResult Function(int attempt)? updateInfo,
    required TResult orElse(),
  }) {
    if (initialUpdateInfo != null) {
      return initialUpdateInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EuAuthorizationEventInitialUpdateInfo value)
        initialUpdateInfo,
    required TResult Function(EuAuthorizationEventUpdateInfo value) updateInfo,
  }) {
    return initialUpdateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationEventInitialUpdateInfo value)?
        initialUpdateInfo,
    TResult Function(EuAuthorizationEventUpdateInfo value)? updateInfo,
  }) {
    return initialUpdateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationEventInitialUpdateInfo value)?
        initialUpdateInfo,
    TResult Function(EuAuthorizationEventUpdateInfo value)? updateInfo,
    required TResult orElse(),
  }) {
    if (initialUpdateInfo != null) {
      return initialUpdateInfo(this);
    }
    return orElse();
  }
}

abstract class EuAuthorizationEventInitialUpdateInfo
    extends EuAuthorizationEvent
    implements _LogsInEmitter, _AuthorizedEmitter, _ErrorEmitter, _LoginCaller {
  const factory EuAuthorizationEventInitialUpdateInfo() =
      _$EuAuthorizationEventInitialUpdateInfo;
  const EuAuthorizationEventInitialUpdateInfo._() : super._();
}

/// @nodoc
abstract class $EuAuthorizationEventUpdateInfoCopyWith<$Res> {
  factory $EuAuthorizationEventUpdateInfoCopyWith(
          EuAuthorizationEventUpdateInfo value,
          $Res Function(EuAuthorizationEventUpdateInfo) then) =
      _$EuAuthorizationEventUpdateInfoCopyWithImpl<$Res>;
  $Res call({int attempt});
}

/// @nodoc
class _$EuAuthorizationEventUpdateInfoCopyWithImpl<$Res>
    extends _$EuAuthorizationEventCopyWithImpl<$Res>
    implements $EuAuthorizationEventUpdateInfoCopyWith<$Res> {
  _$EuAuthorizationEventUpdateInfoCopyWithImpl(
      EuAuthorizationEventUpdateInfo _value,
      $Res Function(EuAuthorizationEventUpdateInfo) _then)
      : super(_value, (v) => _then(v as EuAuthorizationEventUpdateInfo));

  @override
  EuAuthorizationEventUpdateInfo get _value =>
      super._value as EuAuthorizationEventUpdateInfo;

  @override
  $Res call({
    Object? attempt = freezed,
  }) {
    return _then(EuAuthorizationEventUpdateInfo(
      attempt: attempt == freezed
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@Implements(_AttemptContainer)
@With(_LoadingEmitter)
@With(_AuthorizedEmitter)
@With(_ErrorEmitter)
@With(_LoginCaller)
@With(_UpdateInfoEventCaller)
class _$EuAuthorizationEventUpdateInfo extends EuAuthorizationEventUpdateInfo
    with
        _LoadingEmitter,
        _AuthorizedEmitter,
        _ErrorEmitter,
        _LoginCaller,
        _UpdateInfoEventCaller {
  const _$EuAuthorizationEventUpdateInfo({this.attempt = 0}) : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int attempt;

  @override
  String toString() {
    return 'EuAuthorizationEvent.updateInfo(attempt: $attempt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EuAuthorizationEventUpdateInfo &&
            (identical(other.attempt, attempt) ||
                const DeepCollectionEquality().equals(other.attempt, attempt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(attempt);

  @JsonKey(ignore: true)
  @override
  $EuAuthorizationEventUpdateInfoCopyWith<EuAuthorizationEventUpdateInfo>
      get copyWith => _$EuAuthorizationEventUpdateInfoCopyWithImpl<
          EuAuthorizationEventUpdateInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialUpdateInfo,
    required TResult Function(int attempt) updateInfo,
  }) {
    return updateInfo(attempt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialUpdateInfo,
    TResult Function(int attempt)? updateInfo,
  }) {
    return updateInfo?.call(attempt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialUpdateInfo,
    TResult Function(int attempt)? updateInfo,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(attempt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EuAuthorizationEventInitialUpdateInfo value)
        initialUpdateInfo,
    required TResult Function(EuAuthorizationEventUpdateInfo value) updateInfo,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationEventInitialUpdateInfo value)?
        initialUpdateInfo,
    TResult Function(EuAuthorizationEventUpdateInfo value)? updateInfo,
  }) {
    return updateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationEventInitialUpdateInfo value)?
        initialUpdateInfo,
    TResult Function(EuAuthorizationEventUpdateInfo value)? updateInfo,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(this);
    }
    return orElse();
  }
}

abstract class EuAuthorizationEventUpdateInfo extends EuAuthorizationEvent
    implements
        _AttemptContainer,
        _LoadingEmitter,
        _AuthorizedEmitter,
        _ErrorEmitter,
        _LoginCaller,
        _UpdateInfoEventCaller {
  const factory EuAuthorizationEventUpdateInfo({int attempt}) =
      _$EuAuthorizationEventUpdateInfo;
  const EuAuthorizationEventUpdateInfo._() : super._();

  int get attempt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EuAuthorizationEventUpdateInfoCopyWith<EuAuthorizationEventUpdateInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$EuAuthorizationStateTearOff {
  const _$EuAuthorizationStateTearOff();

  EuAuthorizationStateLoading loading() {
    return const EuAuthorizationStateLoading();
  }

  EuAuthorizationStateLogsIn logsIn() {
    return const EuAuthorizationStateLogsIn();
  }

  EuAuthorizationStateAuthorized authorized({required User user}) {
    return EuAuthorizationStateAuthorized(
      user: user,
    );
  }

  EuAuthorizationStateError error() {
    return const EuAuthorizationStateError();
  }
}

/// @nodoc
const $EuAuthorizationState = _$EuAuthorizationStateTearOff();

/// @nodoc
mixin _$EuAuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() logsIn,
    required TResult Function(User user) authorized,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EuAuthorizationStateLoading value) loading,
    required TResult Function(EuAuthorizationStateLogsIn value) logsIn,
    required TResult Function(EuAuthorizationStateAuthorized value) authorized,
    required TResult Function(EuAuthorizationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EuAuthorizationStateCopyWith<$Res> {
  factory $EuAuthorizationStateCopyWith(EuAuthorizationState value,
          $Res Function(EuAuthorizationState) then) =
      _$EuAuthorizationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EuAuthorizationStateCopyWithImpl<$Res>
    implements $EuAuthorizationStateCopyWith<$Res> {
  _$EuAuthorizationStateCopyWithImpl(this._value, this._then);

  final EuAuthorizationState _value;
  // ignore: unused_field
  final $Res Function(EuAuthorizationState) _then;
}

/// @nodoc
abstract class $EuAuthorizationStateLoadingCopyWith<$Res> {
  factory $EuAuthorizationStateLoadingCopyWith(
          EuAuthorizationStateLoading value,
          $Res Function(EuAuthorizationStateLoading) then) =
      _$EuAuthorizationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EuAuthorizationStateLoadingCopyWithImpl<$Res>
    extends _$EuAuthorizationStateCopyWithImpl<$Res>
    implements $EuAuthorizationStateLoadingCopyWith<$Res> {
  _$EuAuthorizationStateLoadingCopyWithImpl(EuAuthorizationStateLoading _value,
      $Res Function(EuAuthorizationStateLoading) _then)
      : super(_value, (v) => _then(v as EuAuthorizationStateLoading));

  @override
  EuAuthorizationStateLoading get _value =>
      super._value as EuAuthorizationStateLoading;
}

/// @nodoc

class _$EuAuthorizationStateLoading extends EuAuthorizationStateLoading {
  const _$EuAuthorizationStateLoading() : super._();

  @override
  String toString() {
    return 'EuAuthorizationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EuAuthorizationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() logsIn,
    required TResult Function(User user) authorized,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
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
    required TResult Function(EuAuthorizationStateLoading value) loading,
    required TResult Function(EuAuthorizationStateLogsIn value) logsIn,
    required TResult Function(EuAuthorizationStateAuthorized value) authorized,
    required TResult Function(EuAuthorizationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EuAuthorizationStateLoading extends EuAuthorizationState {
  const factory EuAuthorizationStateLoading() = _$EuAuthorizationStateLoading;
  const EuAuthorizationStateLoading._() : super._();
}

/// @nodoc
abstract class $EuAuthorizationStateLogsInCopyWith<$Res> {
  factory $EuAuthorizationStateLogsInCopyWith(EuAuthorizationStateLogsIn value,
          $Res Function(EuAuthorizationStateLogsIn) then) =
      _$EuAuthorizationStateLogsInCopyWithImpl<$Res>;
}

/// @nodoc
class _$EuAuthorizationStateLogsInCopyWithImpl<$Res>
    extends _$EuAuthorizationStateCopyWithImpl<$Res>
    implements $EuAuthorizationStateLogsInCopyWith<$Res> {
  _$EuAuthorizationStateLogsInCopyWithImpl(EuAuthorizationStateLogsIn _value,
      $Res Function(EuAuthorizationStateLogsIn) _then)
      : super(_value, (v) => _then(v as EuAuthorizationStateLogsIn));

  @override
  EuAuthorizationStateLogsIn get _value =>
      super._value as EuAuthorizationStateLogsIn;
}

/// @nodoc

class _$EuAuthorizationStateLogsIn extends EuAuthorizationStateLogsIn {
  const _$EuAuthorizationStateLogsIn() : super._();

  @override
  String toString() {
    return 'EuAuthorizationState.logsIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EuAuthorizationStateLogsIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() logsIn,
    required TResult Function(User user) authorized,
    required TResult Function() error,
  }) {
    return logsIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
  }) {
    return logsIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (logsIn != null) {
      return logsIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EuAuthorizationStateLoading value) loading,
    required TResult Function(EuAuthorizationStateLogsIn value) logsIn,
    required TResult Function(EuAuthorizationStateAuthorized value) authorized,
    required TResult Function(EuAuthorizationStateError value) error,
  }) {
    return logsIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
  }) {
    return logsIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (logsIn != null) {
      return logsIn(this);
    }
    return orElse();
  }
}

abstract class EuAuthorizationStateLogsIn extends EuAuthorizationState {
  const factory EuAuthorizationStateLogsIn() = _$EuAuthorizationStateLogsIn;
  const EuAuthorizationStateLogsIn._() : super._();
}

/// @nodoc
abstract class $EuAuthorizationStateAuthorizedCopyWith<$Res> {
  factory $EuAuthorizationStateAuthorizedCopyWith(
          EuAuthorizationStateAuthorized value,
          $Res Function(EuAuthorizationStateAuthorized) then) =
      _$EuAuthorizationStateAuthorizedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$EuAuthorizationStateAuthorizedCopyWithImpl<$Res>
    extends _$EuAuthorizationStateCopyWithImpl<$Res>
    implements $EuAuthorizationStateAuthorizedCopyWith<$Res> {
  _$EuAuthorizationStateAuthorizedCopyWithImpl(
      EuAuthorizationStateAuthorized _value,
      $Res Function(EuAuthorizationStateAuthorized) _then)
      : super(_value, (v) => _then(v as EuAuthorizationStateAuthorized));

  @override
  EuAuthorizationStateAuthorized get _value =>
      super._value as EuAuthorizationStateAuthorized;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(EuAuthorizationStateAuthorized(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$EuAuthorizationStateAuthorized extends EuAuthorizationStateAuthorized {
  const _$EuAuthorizationStateAuthorized({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'EuAuthorizationState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EuAuthorizationStateAuthorized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $EuAuthorizationStateAuthorizedCopyWith<EuAuthorizationStateAuthorized>
      get copyWith => _$EuAuthorizationStateAuthorizedCopyWithImpl<
          EuAuthorizationStateAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() logsIn,
    required TResult Function(User user) authorized,
    required TResult Function() error,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EuAuthorizationStateLoading value) loading,
    required TResult Function(EuAuthorizationStateLogsIn value) logsIn,
    required TResult Function(EuAuthorizationStateAuthorized value) authorized,
    required TResult Function(EuAuthorizationStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class EuAuthorizationStateAuthorized extends EuAuthorizationState {
  const factory EuAuthorizationStateAuthorized({required User user}) =
      _$EuAuthorizationStateAuthorized;
  const EuAuthorizationStateAuthorized._() : super._();

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EuAuthorizationStateAuthorizedCopyWith<EuAuthorizationStateAuthorized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EuAuthorizationStateErrorCopyWith<$Res> {
  factory $EuAuthorizationStateErrorCopyWith(EuAuthorizationStateError value,
          $Res Function(EuAuthorizationStateError) then) =
      _$EuAuthorizationStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EuAuthorizationStateErrorCopyWithImpl<$Res>
    extends _$EuAuthorizationStateCopyWithImpl<$Res>
    implements $EuAuthorizationStateErrorCopyWith<$Res> {
  _$EuAuthorizationStateErrorCopyWithImpl(EuAuthorizationStateError _value,
      $Res Function(EuAuthorizationStateError) _then)
      : super(_value, (v) => _then(v as EuAuthorizationStateError));

  @override
  EuAuthorizationStateError get _value =>
      super._value as EuAuthorizationStateError;
}

/// @nodoc

class _$EuAuthorizationStateError extends EuAuthorizationStateError {
  const _$EuAuthorizationStateError() : super._();

  @override
  String toString() {
    return 'EuAuthorizationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EuAuthorizationStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() logsIn,
    required TResult Function(User user) authorized,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? logsIn,
    TResult Function(User user)? authorized,
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
    required TResult Function(EuAuthorizationStateLoading value) loading,
    required TResult Function(EuAuthorizationStateLogsIn value) logsIn,
    required TResult Function(EuAuthorizationStateAuthorized value) authorized,
    required TResult Function(EuAuthorizationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EuAuthorizationStateLoading value)? loading,
    TResult Function(EuAuthorizationStateLogsIn value)? logsIn,
    TResult Function(EuAuthorizationStateAuthorized value)? authorized,
    TResult Function(EuAuthorizationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EuAuthorizationStateError extends EuAuthorizationState {
  const factory EuAuthorizationStateError() = _$EuAuthorizationStateError;
  const EuAuthorizationStateError._() : super._();
}
