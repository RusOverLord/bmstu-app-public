// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkEventTearOff {
  const _$NetworkEventTearOff();

  NetworkEventOverrideUrl overrideUrl({required String baseUrl}) {
    return NetworkEventOverrideUrl(
      baseUrl: baseUrl,
    );
  }

  NetworkEventDeleteUrlOverride deleteUrlOverride() {
    return const NetworkEventDeleteUrlOverride();
  }
}

/// @nodoc
const $NetworkEvent = _$NetworkEventTearOff();

/// @nodoc
mixin _$NetworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseUrl) overrideUrl,
    required TResult Function() deleteUrlOverride,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String baseUrl)? overrideUrl,
    TResult Function()? deleteUrlOverride,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseUrl)? overrideUrl,
    TResult Function()? deleteUrlOverride,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkEventOverrideUrl value) overrideUrl,
    required TResult Function(NetworkEventDeleteUrlOverride value)
        deleteUrlOverride,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkEventOverrideUrl value)? overrideUrl,
    TResult Function(NetworkEventDeleteUrlOverride value)? deleteUrlOverride,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkEventOverrideUrl value)? overrideUrl,
    TResult Function(NetworkEventDeleteUrlOverride value)? deleteUrlOverride,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEventCopyWith<$Res> {
  factory $NetworkEventCopyWith(
          NetworkEvent value, $Res Function(NetworkEvent) then) =
      _$NetworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkEventCopyWithImpl<$Res> implements $NetworkEventCopyWith<$Res> {
  _$NetworkEventCopyWithImpl(this._value, this._then);

  final NetworkEvent _value;
  // ignore: unused_field
  final $Res Function(NetworkEvent) _then;
}

/// @nodoc
abstract class $NetworkEventOverrideUrlCopyWith<$Res> {
  factory $NetworkEventOverrideUrlCopyWith(NetworkEventOverrideUrl value,
          $Res Function(NetworkEventOverrideUrl) then) =
      _$NetworkEventOverrideUrlCopyWithImpl<$Res>;
  $Res call({String baseUrl});
}

/// @nodoc
class _$NetworkEventOverrideUrlCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements $NetworkEventOverrideUrlCopyWith<$Res> {
  _$NetworkEventOverrideUrlCopyWithImpl(NetworkEventOverrideUrl _value,
      $Res Function(NetworkEventOverrideUrl) _then)
      : super(_value, (v) => _then(v as NetworkEventOverrideUrl));

  @override
  NetworkEventOverrideUrl get _value => super._value as NetworkEventOverrideUrl;

  @override
  $Res call({
    Object? baseUrl = freezed,
  }) {
    return _then(NetworkEventOverrideUrl(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkEventOverrideUrl extends NetworkEventOverrideUrl {
  const _$NetworkEventOverrideUrl({required this.baseUrl}) : super._();

  @override
  final String baseUrl;

  @override
  String toString() {
    return 'NetworkEvent.overrideUrl(baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkEventOverrideUrl &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality().equals(other.baseUrl, baseUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(baseUrl);

  @JsonKey(ignore: true)
  @override
  $NetworkEventOverrideUrlCopyWith<NetworkEventOverrideUrl> get copyWith =>
      _$NetworkEventOverrideUrlCopyWithImpl<NetworkEventOverrideUrl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseUrl) overrideUrl,
    required TResult Function() deleteUrlOverride,
  }) {
    return overrideUrl(baseUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String baseUrl)? overrideUrl,
    TResult Function()? deleteUrlOverride,
  }) {
    return overrideUrl?.call(baseUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseUrl)? overrideUrl,
    TResult Function()? deleteUrlOverride,
    required TResult orElse(),
  }) {
    if (overrideUrl != null) {
      return overrideUrl(baseUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkEventOverrideUrl value) overrideUrl,
    required TResult Function(NetworkEventDeleteUrlOverride value)
        deleteUrlOverride,
  }) {
    return overrideUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkEventOverrideUrl value)? overrideUrl,
    TResult Function(NetworkEventDeleteUrlOverride value)? deleteUrlOverride,
  }) {
    return overrideUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkEventOverrideUrl value)? overrideUrl,
    TResult Function(NetworkEventDeleteUrlOverride value)? deleteUrlOverride,
    required TResult orElse(),
  }) {
    if (overrideUrl != null) {
      return overrideUrl(this);
    }
    return orElse();
  }
}

abstract class NetworkEventOverrideUrl extends NetworkEvent {
  const factory NetworkEventOverrideUrl({required String baseUrl}) =
      _$NetworkEventOverrideUrl;
  const NetworkEventOverrideUrl._() : super._();

  String get baseUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkEventOverrideUrlCopyWith<NetworkEventOverrideUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkEventDeleteUrlOverrideCopyWith<$Res> {
  factory $NetworkEventDeleteUrlOverrideCopyWith(
          NetworkEventDeleteUrlOverride value,
          $Res Function(NetworkEventDeleteUrlOverride) then) =
      _$NetworkEventDeleteUrlOverrideCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkEventDeleteUrlOverrideCopyWithImpl<$Res>
    extends _$NetworkEventCopyWithImpl<$Res>
    implements $NetworkEventDeleteUrlOverrideCopyWith<$Res> {
  _$NetworkEventDeleteUrlOverrideCopyWithImpl(
      NetworkEventDeleteUrlOverride _value,
      $Res Function(NetworkEventDeleteUrlOverride) _then)
      : super(_value, (v) => _then(v as NetworkEventDeleteUrlOverride));

  @override
  NetworkEventDeleteUrlOverride get _value =>
      super._value as NetworkEventDeleteUrlOverride;
}

/// @nodoc

class _$NetworkEventDeleteUrlOverride extends NetworkEventDeleteUrlOverride {
  const _$NetworkEventDeleteUrlOverride() : super._();

  @override
  String toString() {
    return 'NetworkEvent.deleteUrlOverride()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkEventDeleteUrlOverride);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseUrl) overrideUrl,
    required TResult Function() deleteUrlOverride,
  }) {
    return deleteUrlOverride();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String baseUrl)? overrideUrl,
    TResult Function()? deleteUrlOverride,
  }) {
    return deleteUrlOverride?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseUrl)? overrideUrl,
    TResult Function()? deleteUrlOverride,
    required TResult orElse(),
  }) {
    if (deleteUrlOverride != null) {
      return deleteUrlOverride();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkEventOverrideUrl value) overrideUrl,
    required TResult Function(NetworkEventDeleteUrlOverride value)
        deleteUrlOverride,
  }) {
    return deleteUrlOverride(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkEventOverrideUrl value)? overrideUrl,
    TResult Function(NetworkEventDeleteUrlOverride value)? deleteUrlOverride,
  }) {
    return deleteUrlOverride?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkEventOverrideUrl value)? overrideUrl,
    TResult Function(NetworkEventDeleteUrlOverride value)? deleteUrlOverride,
    required TResult orElse(),
  }) {
    if (deleteUrlOverride != null) {
      return deleteUrlOverride(this);
    }
    return orElse();
  }
}

abstract class NetworkEventDeleteUrlOverride extends NetworkEvent {
  const factory NetworkEventDeleteUrlOverride() =
      _$NetworkEventDeleteUrlOverride;
  const NetworkEventDeleteUrlOverride._() : super._();
}

/// @nodoc
class _$NetworkStateTearOff {
  const _$NetworkStateTearOff();

  NetworkStateIdle idle(
      {required String baseUrl, required bool baseUrlIsOverridden}) {
    return NetworkStateIdle(
      baseUrl: baseUrl,
      baseUrlIsOverridden: baseUrlIsOverridden,
    );
  }

  NetworkStateError error(
      {required String baseUrl, required bool baseUrlIsOverridden}) {
    return NetworkStateError(
      baseUrl: baseUrl,
      baseUrlIsOverridden: baseUrlIsOverridden,
    );
  }
}

/// @nodoc
const $NetworkState = _$NetworkStateTearOff();

/// @nodoc
mixin _$NetworkState {
  String get baseUrl => throw _privateConstructorUsedError;
  bool get baseUrlIsOverridden => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseUrl, bool baseUrlIsOverridden) idle,
    required TResult Function(String baseUrl, bool baseUrlIsOverridden) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? idle,
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? idle,
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateIdle value) idle,
    required TResult Function(NetworkStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkStateIdle value)? idle,
    TResult Function(NetworkStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateIdle value)? idle,
    TResult Function(NetworkStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res>;
  $Res call({String baseUrl, bool baseUrlIsOverridden});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res> implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState _value;
  // ignore: unused_field
  final $Res Function(NetworkState) _then;

  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? baseUrlIsOverridden = freezed,
  }) {
    return _then(_value.copyWith(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlIsOverridden: baseUrlIsOverridden == freezed
          ? _value.baseUrlIsOverridden
          : baseUrlIsOverridden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $NetworkStateIdleCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory $NetworkStateIdleCopyWith(
          NetworkStateIdle value, $Res Function(NetworkStateIdle) then) =
      _$NetworkStateIdleCopyWithImpl<$Res>;
  @override
  $Res call({String baseUrl, bool baseUrlIsOverridden});
}

/// @nodoc
class _$NetworkStateIdleCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res>
    implements $NetworkStateIdleCopyWith<$Res> {
  _$NetworkStateIdleCopyWithImpl(
      NetworkStateIdle _value, $Res Function(NetworkStateIdle) _then)
      : super(_value, (v) => _then(v as NetworkStateIdle));

  @override
  NetworkStateIdle get _value => super._value as NetworkStateIdle;

  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? baseUrlIsOverridden = freezed,
  }) {
    return _then(NetworkStateIdle(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlIsOverridden: baseUrlIsOverridden == freezed
          ? _value.baseUrlIsOverridden
          : baseUrlIsOverridden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NetworkStateIdle extends NetworkStateIdle {
  const _$NetworkStateIdle(
      {required this.baseUrl, required this.baseUrlIsOverridden})
      : super._();

  @override
  final String baseUrl;
  @override
  final bool baseUrlIsOverridden;

  @override
  String toString() {
    return 'NetworkState.idle(baseUrl: $baseUrl, baseUrlIsOverridden: $baseUrlIsOverridden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkStateIdle &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality()
                    .equals(other.baseUrl, baseUrl)) &&
            (identical(other.baseUrlIsOverridden, baseUrlIsOverridden) ||
                const DeepCollectionEquality()
                    .equals(other.baseUrlIsOverridden, baseUrlIsOverridden)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(baseUrl) ^
      const DeepCollectionEquality().hash(baseUrlIsOverridden);

  @JsonKey(ignore: true)
  @override
  $NetworkStateIdleCopyWith<NetworkStateIdle> get copyWith =>
      _$NetworkStateIdleCopyWithImpl<NetworkStateIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseUrl, bool baseUrlIsOverridden) idle,
    required TResult Function(String baseUrl, bool baseUrlIsOverridden) error,
  }) {
    return idle(baseUrl, baseUrlIsOverridden);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? idle,
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? error,
  }) {
    return idle?.call(baseUrl, baseUrlIsOverridden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? idle,
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(baseUrl, baseUrlIsOverridden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateIdle value) idle,
    required TResult Function(NetworkStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkStateIdle value)? idle,
    TResult Function(NetworkStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateIdle value)? idle,
    TResult Function(NetworkStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class NetworkStateIdle extends NetworkState {
  const factory NetworkStateIdle(
      {required String baseUrl,
      required bool baseUrlIsOverridden}) = _$NetworkStateIdle;
  const NetworkStateIdle._() : super._();

  @override
  String get baseUrl => throw _privateConstructorUsedError;
  @override
  bool get baseUrlIsOverridden => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NetworkStateIdleCopyWith<NetworkStateIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateErrorCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory $NetworkStateErrorCopyWith(
          NetworkStateError value, $Res Function(NetworkStateError) then) =
      _$NetworkStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String baseUrl, bool baseUrlIsOverridden});
}

/// @nodoc
class _$NetworkStateErrorCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res>
    implements $NetworkStateErrorCopyWith<$Res> {
  _$NetworkStateErrorCopyWithImpl(
      NetworkStateError _value, $Res Function(NetworkStateError) _then)
      : super(_value, (v) => _then(v as NetworkStateError));

  @override
  NetworkStateError get _value => super._value as NetworkStateError;

  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? baseUrlIsOverridden = freezed,
  }) {
    return _then(NetworkStateError(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrlIsOverridden: baseUrlIsOverridden == freezed
          ? _value.baseUrlIsOverridden
          : baseUrlIsOverridden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NetworkStateError extends NetworkStateError {
  const _$NetworkStateError(
      {required this.baseUrl, required this.baseUrlIsOverridden})
      : super._();

  @override
  final String baseUrl;
  @override
  final bool baseUrlIsOverridden;

  @override
  String toString() {
    return 'NetworkState.error(baseUrl: $baseUrl, baseUrlIsOverridden: $baseUrlIsOverridden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkStateError &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality()
                    .equals(other.baseUrl, baseUrl)) &&
            (identical(other.baseUrlIsOverridden, baseUrlIsOverridden) ||
                const DeepCollectionEquality()
                    .equals(other.baseUrlIsOverridden, baseUrlIsOverridden)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(baseUrl) ^
      const DeepCollectionEquality().hash(baseUrlIsOverridden);

  @JsonKey(ignore: true)
  @override
  $NetworkStateErrorCopyWith<NetworkStateError> get copyWith =>
      _$NetworkStateErrorCopyWithImpl<NetworkStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String baseUrl, bool baseUrlIsOverridden) idle,
    required TResult Function(String baseUrl, bool baseUrlIsOverridden) error,
  }) {
    return error(baseUrl, baseUrlIsOverridden);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? idle,
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? error,
  }) {
    return error?.call(baseUrl, baseUrlIsOverridden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? idle,
    TResult Function(String baseUrl, bool baseUrlIsOverridden)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(baseUrl, baseUrlIsOverridden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkStateIdle value) idle,
    required TResult Function(NetworkStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkStateIdle value)? idle,
    TResult Function(NetworkStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkStateIdle value)? idle,
    TResult Function(NetworkStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NetworkStateError extends NetworkState {
  const factory NetworkStateError(
      {required String baseUrl,
      required bool baseUrlIsOverridden}) = _$NetworkStateError;
  const NetworkStateError._() : super._();

  @override
  String get baseUrl => throw _privateConstructorUsedError;
  @override
  bool get baseUrlIsOverridden => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NetworkStateErrorCopyWith<NetworkStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
