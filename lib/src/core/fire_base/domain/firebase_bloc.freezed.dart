// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirebaseEventTearOff {
  const _$FirebaseEventTearOff();

  FirebaseEventUpdateToken updateToken({required String token}) {
    return FirebaseEventUpdateToken(
      token: token,
    );
  }
}

/// @nodoc
const $FirebaseEvent = _$FirebaseEventTearOff();

/// @nodoc
mixin _$FirebaseEvent {
  String get token => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) updateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? updateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? updateToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseEventUpdateToken value) updateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseEventUpdateToken value)? updateToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseEventUpdateToken value)? updateToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseEventCopyWith<FirebaseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseEventCopyWith<$Res> {
  factory $FirebaseEventCopyWith(
          FirebaseEvent value, $Res Function(FirebaseEvent) then) =
      _$FirebaseEventCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$FirebaseEventCopyWithImpl<$Res>
    implements $FirebaseEventCopyWith<$Res> {
  _$FirebaseEventCopyWithImpl(this._value, this._then);

  final FirebaseEvent _value;
  // ignore: unused_field
  final $Res Function(FirebaseEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $FirebaseEventUpdateTokenCopyWith<$Res>
    implements $FirebaseEventCopyWith<$Res> {
  factory $FirebaseEventUpdateTokenCopyWith(FirebaseEventUpdateToken value,
          $Res Function(FirebaseEventUpdateToken) then) =
      _$FirebaseEventUpdateTokenCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class _$FirebaseEventUpdateTokenCopyWithImpl<$Res>
    extends _$FirebaseEventCopyWithImpl<$Res>
    implements $FirebaseEventUpdateTokenCopyWith<$Res> {
  _$FirebaseEventUpdateTokenCopyWithImpl(FirebaseEventUpdateToken _value,
      $Res Function(FirebaseEventUpdateToken) _then)
      : super(_value, (v) => _then(v as FirebaseEventUpdateToken));

  @override
  FirebaseEventUpdateToken get _value =>
      super._value as FirebaseEventUpdateToken;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(FirebaseEventUpdateToken(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirebaseEventUpdateToken extends FirebaseEventUpdateToken {
  const _$FirebaseEventUpdateToken({required this.token}) : super._();

  @override
  final String token;

  @override
  String toString() {
    return 'FirebaseEvent.updateToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirebaseEventUpdateToken &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  $FirebaseEventUpdateTokenCopyWith<FirebaseEventUpdateToken> get copyWith =>
      _$FirebaseEventUpdateTokenCopyWithImpl<FirebaseEventUpdateToken>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) updateToken,
  }) {
    return updateToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token)? updateToken,
  }) {
    return updateToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? updateToken,
    required TResult orElse(),
  }) {
    if (updateToken != null) {
      return updateToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseEventUpdateToken value) updateToken,
  }) {
    return updateToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseEventUpdateToken value)? updateToken,
  }) {
    return updateToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseEventUpdateToken value)? updateToken,
    required TResult orElse(),
  }) {
    if (updateToken != null) {
      return updateToken(this);
    }
    return orElse();
  }
}

abstract class FirebaseEventUpdateToken extends FirebaseEvent {
  const factory FirebaseEventUpdateToken({required String token}) =
      _$FirebaseEventUpdateToken;
  const FirebaseEventUpdateToken._() : super._();

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FirebaseEventUpdateTokenCopyWith<FirebaseEventUpdateToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FirebaseStateTearOff {
  const _$FirebaseStateTearOff();

  _FirebaseState call({required String token}) {
    return _FirebaseState(
      token: token,
    );
  }
}

/// @nodoc
const $FirebaseState = _$FirebaseStateTearOff();

/// @nodoc
mixin _$FirebaseState {
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseStateCopyWith<FirebaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseStateCopyWith<$Res> {
  factory $FirebaseStateCopyWith(
          FirebaseState value, $Res Function(FirebaseState) then) =
      _$FirebaseStateCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$FirebaseStateCopyWithImpl<$Res>
    implements $FirebaseStateCopyWith<$Res> {
  _$FirebaseStateCopyWithImpl(this._value, this._then);

  final FirebaseState _value;
  // ignore: unused_field
  final $Res Function(FirebaseState) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseStateCopyWith<$Res>
    implements $FirebaseStateCopyWith<$Res> {
  factory _$FirebaseStateCopyWith(
          _FirebaseState value, $Res Function(_FirebaseState) then) =
      __$FirebaseStateCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$FirebaseStateCopyWithImpl<$Res>
    extends _$FirebaseStateCopyWithImpl<$Res>
    implements _$FirebaseStateCopyWith<$Res> {
  __$FirebaseStateCopyWithImpl(
      _FirebaseState _value, $Res Function(_FirebaseState) _then)
      : super(_value, (v) => _then(v as _FirebaseState));

  @override
  _FirebaseState get _value => super._value as _FirebaseState;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_FirebaseState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseState implements _FirebaseState {
  const _$_FirebaseState({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'FirebaseState(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseState &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$FirebaseStateCopyWith<_FirebaseState> get copyWith =>
      __$FirebaseStateCopyWithImpl<_FirebaseState>(this, _$identity);
}

abstract class _FirebaseState implements FirebaseState {
  const factory _FirebaseState({required String token}) = _$_FirebaseState;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseStateCopyWith<_FirebaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
