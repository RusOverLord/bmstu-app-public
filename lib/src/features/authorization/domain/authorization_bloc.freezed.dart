// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationEventTearOff {
  const _$AuthorizationEventTearOff();

  AuthorizationEventLoginBySearch loginBySearch(
      {required UserType userType, required String scheduleUuid}) {
    return AuthorizationEventLoginBySearch(
      userType: userType,
      scheduleUuid: scheduleUuid,
    );
  }

  AuthorizationEventUpdateInfo updateUserInfo() {
    return const AuthorizationEventUpdateInfo();
  }

  AuthorizationEventLogin login({required Completer<User> completer}) {
    return AuthorizationEventLogin(
      completer: completer,
    );
  }

  AuthorizationEventLogout logout() {
    return const AuthorizationEventLogout();
  }

  AuthorizationEventUpdateMainScheduleUuid updateMainScheduleUuid(
      {required String mainScheduleUuid}) {
    return AuthorizationEventUpdateMainScheduleUuid(
      mainScheduleUuid: mainScheduleUuid,
    );
  }
}

/// @nodoc
const $AuthorizationEvent = _$AuthorizationEventTearOff();

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserType userType, String scheduleUuid)
        loginBySearch,
    required TResult Function() updateUserInfo,
    required TResult Function(Completer<User> completer) login,
    required TResult Function() logout,
    required TResult Function(String mainScheduleUuid) updateMainScheduleUuid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationEventLoginBySearch value)
        loginBySearch,
    required TResult Function(AuthorizationEventUpdateInfo value)
        updateUserInfo,
    required TResult Function(AuthorizationEventLogin value) login,
    required TResult Function(AuthorizationEventLogout value) logout,
    required TResult Function(AuthorizationEventUpdateMainScheduleUuid value)
        updateMainScheduleUuid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  final AuthorizationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationEvent) _then;
}

/// @nodoc
abstract class $AuthorizationEventLoginBySearchCopyWith<$Res> {
  factory $AuthorizationEventLoginBySearchCopyWith(
          AuthorizationEventLoginBySearch value,
          $Res Function(AuthorizationEventLoginBySearch) then) =
      _$AuthorizationEventLoginBySearchCopyWithImpl<$Res>;
  $Res call({UserType userType, String scheduleUuid});
}

/// @nodoc
class _$AuthorizationEventLoginBySearchCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventLoginBySearchCopyWith<$Res> {
  _$AuthorizationEventLoginBySearchCopyWithImpl(
      AuthorizationEventLoginBySearch _value,
      $Res Function(AuthorizationEventLoginBySearch) _then)
      : super(_value, (v) => _then(v as AuthorizationEventLoginBySearch));

  @override
  AuthorizationEventLoginBySearch get _value =>
      super._value as AuthorizationEventLoginBySearch;

  @override
  $Res call({
    Object? userType = freezed,
    Object? scheduleUuid = freezed,
  }) {
    return _then(AuthorizationEventLoginBySearch(
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      scheduleUuid: scheduleUuid == freezed
          ? _value.scheduleUuid
          : scheduleUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorizationEventLoginBySearch
    extends AuthorizationEventLoginBySearch {
  const _$AuthorizationEventLoginBySearch(
      {required this.userType, required this.scheduleUuid})
      : super._();

  @override
  final UserType userType;
  @override
  final String scheduleUuid;

  @override
  String toString() {
    return 'AuthorizationEvent.loginBySearch(userType: $userType, scheduleUuid: $scheduleUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizationEventLoginBySearch &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(other.scheduleUuid, scheduleUuid) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleUuid, scheduleUuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(scheduleUuid);

  @JsonKey(ignore: true)
  @override
  $AuthorizationEventLoginBySearchCopyWith<AuthorizationEventLoginBySearch>
      get copyWith => _$AuthorizationEventLoginBySearchCopyWithImpl<
          AuthorizationEventLoginBySearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserType userType, String scheduleUuid)
        loginBySearch,
    required TResult Function() updateUserInfo,
    required TResult Function(Completer<User> completer) login,
    required TResult Function() logout,
    required TResult Function(String mainScheduleUuid) updateMainScheduleUuid,
  }) {
    return loginBySearch(userType, scheduleUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
  }) {
    return loginBySearch?.call(userType, scheduleUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (loginBySearch != null) {
      return loginBySearch(userType, scheduleUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationEventLoginBySearch value)
        loginBySearch,
    required TResult Function(AuthorizationEventUpdateInfo value)
        updateUserInfo,
    required TResult Function(AuthorizationEventLogin value) login,
    required TResult Function(AuthorizationEventLogout value) logout,
    required TResult Function(AuthorizationEventUpdateMainScheduleUuid value)
        updateMainScheduleUuid,
  }) {
    return loginBySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
  }) {
    return loginBySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (loginBySearch != null) {
      return loginBySearch(this);
    }
    return orElse();
  }
}

abstract class AuthorizationEventLoginBySearch extends AuthorizationEvent {
  const factory AuthorizationEventLoginBySearch(
      {required UserType userType,
      required String scheduleUuid}) = _$AuthorizationEventLoginBySearch;
  const AuthorizationEventLoginBySearch._() : super._();

  UserType get userType => throw _privateConstructorUsedError;
  String get scheduleUuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationEventLoginBySearchCopyWith<AuthorizationEventLoginBySearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventUpdateInfoCopyWith<$Res> {
  factory $AuthorizationEventUpdateInfoCopyWith(
          AuthorizationEventUpdateInfo value,
          $Res Function(AuthorizationEventUpdateInfo) then) =
      _$AuthorizationEventUpdateInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventUpdateInfoCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventUpdateInfoCopyWith<$Res> {
  _$AuthorizationEventUpdateInfoCopyWithImpl(
      AuthorizationEventUpdateInfo _value,
      $Res Function(AuthorizationEventUpdateInfo) _then)
      : super(_value, (v) => _then(v as AuthorizationEventUpdateInfo));

  @override
  AuthorizationEventUpdateInfo get _value =>
      super._value as AuthorizationEventUpdateInfo;
}

/// @nodoc

class _$AuthorizationEventUpdateInfo extends AuthorizationEventUpdateInfo {
  const _$AuthorizationEventUpdateInfo() : super._();

  @override
  String toString() {
    return 'AuthorizationEvent.updateUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthorizationEventUpdateInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserType userType, String scheduleUuid)
        loginBySearch,
    required TResult Function() updateUserInfo,
    required TResult Function(Completer<User> completer) login,
    required TResult Function() logout,
    required TResult Function(String mainScheduleUuid) updateMainScheduleUuid,
  }) {
    return updateUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
  }) {
    return updateUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationEventLoginBySearch value)
        loginBySearch,
    required TResult Function(AuthorizationEventUpdateInfo value)
        updateUserInfo,
    required TResult Function(AuthorizationEventLogin value) login,
    required TResult Function(AuthorizationEventLogout value) logout,
    required TResult Function(AuthorizationEventUpdateMainScheduleUuid value)
        updateMainScheduleUuid,
  }) {
    return updateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
  }) {
    return updateUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (updateUserInfo != null) {
      return updateUserInfo(this);
    }
    return orElse();
  }
}

abstract class AuthorizationEventUpdateInfo extends AuthorizationEvent {
  const factory AuthorizationEventUpdateInfo() = _$AuthorizationEventUpdateInfo;
  const AuthorizationEventUpdateInfo._() : super._();
}

/// @nodoc
abstract class $AuthorizationEventLoginCopyWith<$Res> {
  factory $AuthorizationEventLoginCopyWith(AuthorizationEventLogin value,
          $Res Function(AuthorizationEventLogin) then) =
      _$AuthorizationEventLoginCopyWithImpl<$Res>;
  $Res call({Completer<User> completer});
}

/// @nodoc
class _$AuthorizationEventLoginCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventLoginCopyWith<$Res> {
  _$AuthorizationEventLoginCopyWithImpl(AuthorizationEventLogin _value,
      $Res Function(AuthorizationEventLogin) _then)
      : super(_value, (v) => _then(v as AuthorizationEventLogin));

  @override
  AuthorizationEventLogin get _value => super._value as AuthorizationEventLogin;

  @override
  $Res call({
    Object? completer = freezed,
  }) {
    return _then(AuthorizationEventLogin(
      completer: completer == freezed
          ? _value.completer
          : completer // ignore: cast_nullable_to_non_nullable
              as Completer<User>,
    ));
  }
}

/// @nodoc

class _$AuthorizationEventLogin extends AuthorizationEventLogin {
  const _$AuthorizationEventLogin({required this.completer}) : super._();

  @override
  final Completer<User> completer;

  @override
  String toString() {
    return 'AuthorizationEvent.login(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizationEventLogin &&
            (identical(other.completer, completer) ||
                const DeepCollectionEquality()
                    .equals(other.completer, completer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(completer);

  @JsonKey(ignore: true)
  @override
  $AuthorizationEventLoginCopyWith<AuthorizationEventLogin> get copyWith =>
      _$AuthorizationEventLoginCopyWithImpl<AuthorizationEventLogin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserType userType, String scheduleUuid)
        loginBySearch,
    required TResult Function() updateUserInfo,
    required TResult Function(Completer<User> completer) login,
    required TResult Function() logout,
    required TResult Function(String mainScheduleUuid) updateMainScheduleUuid,
  }) {
    return login(completer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
  }) {
    return login?.call(completer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationEventLoginBySearch value)
        loginBySearch,
    required TResult Function(AuthorizationEventUpdateInfo value)
        updateUserInfo,
    required TResult Function(AuthorizationEventLogin value) login,
    required TResult Function(AuthorizationEventLogout value) logout,
    required TResult Function(AuthorizationEventUpdateMainScheduleUuid value)
        updateMainScheduleUuid,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthorizationEventLogin extends AuthorizationEvent {
  const factory AuthorizationEventLogin({required Completer<User> completer}) =
      _$AuthorizationEventLogin;
  const AuthorizationEventLogin._() : super._();

  Completer<User> get completer => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationEventLoginCopyWith<AuthorizationEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventLogoutCopyWith<$Res> {
  factory $AuthorizationEventLogoutCopyWith(AuthorizationEventLogout value,
          $Res Function(AuthorizationEventLogout) then) =
      _$AuthorizationEventLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationEventLogoutCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventLogoutCopyWith<$Res> {
  _$AuthorizationEventLogoutCopyWithImpl(AuthorizationEventLogout _value,
      $Res Function(AuthorizationEventLogout) _then)
      : super(_value, (v) => _then(v as AuthorizationEventLogout));

  @override
  AuthorizationEventLogout get _value =>
      super._value as AuthorizationEventLogout;
}

/// @nodoc

class _$AuthorizationEventLogout extends AuthorizationEventLogout {
  const _$AuthorizationEventLogout() : super._();

  @override
  String toString() {
    return 'AuthorizationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthorizationEventLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserType userType, String scheduleUuid)
        loginBySearch,
    required TResult Function() updateUserInfo,
    required TResult Function(Completer<User> completer) login,
    required TResult Function() logout,
    required TResult Function(String mainScheduleUuid) updateMainScheduleUuid,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationEventLoginBySearch value)
        loginBySearch,
    required TResult Function(AuthorizationEventUpdateInfo value)
        updateUserInfo,
    required TResult Function(AuthorizationEventLogin value) login,
    required TResult Function(AuthorizationEventLogout value) logout,
    required TResult Function(AuthorizationEventUpdateMainScheduleUuid value)
        updateMainScheduleUuid,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthorizationEventLogout extends AuthorizationEvent {
  const factory AuthorizationEventLogout() = _$AuthorizationEventLogout;
  const AuthorizationEventLogout._() : super._();
}

/// @nodoc
abstract class $AuthorizationEventUpdateMainScheduleUuidCopyWith<$Res> {
  factory $AuthorizationEventUpdateMainScheduleUuidCopyWith(
          AuthorizationEventUpdateMainScheduleUuid value,
          $Res Function(AuthorizationEventUpdateMainScheduleUuid) then) =
      _$AuthorizationEventUpdateMainScheduleUuidCopyWithImpl<$Res>;
  $Res call({String mainScheduleUuid});
}

/// @nodoc
class _$AuthorizationEventUpdateMainScheduleUuidCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res>
    implements $AuthorizationEventUpdateMainScheduleUuidCopyWith<$Res> {
  _$AuthorizationEventUpdateMainScheduleUuidCopyWithImpl(
      AuthorizationEventUpdateMainScheduleUuid _value,
      $Res Function(AuthorizationEventUpdateMainScheduleUuid) _then)
      : super(_value,
            (v) => _then(v as AuthorizationEventUpdateMainScheduleUuid));

  @override
  AuthorizationEventUpdateMainScheduleUuid get _value =>
      super._value as AuthorizationEventUpdateMainScheduleUuid;

  @override
  $Res call({
    Object? mainScheduleUuid = freezed,
  }) {
    return _then(AuthorizationEventUpdateMainScheduleUuid(
      mainScheduleUuid: mainScheduleUuid == freezed
          ? _value.mainScheduleUuid
          : mainScheduleUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorizationEventUpdateMainScheduleUuid
    extends AuthorizationEventUpdateMainScheduleUuid {
  const _$AuthorizationEventUpdateMainScheduleUuid(
      {required this.mainScheduleUuid})
      : super._();

  @override
  final String mainScheduleUuid;

  @override
  String toString() {
    return 'AuthorizationEvent.updateMainScheduleUuid(mainScheduleUuid: $mainScheduleUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizationEventUpdateMainScheduleUuid &&
            (identical(other.mainScheduleUuid, mainScheduleUuid) ||
                const DeepCollectionEquality()
                    .equals(other.mainScheduleUuid, mainScheduleUuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mainScheduleUuid);

  @JsonKey(ignore: true)
  @override
  $AuthorizationEventUpdateMainScheduleUuidCopyWith<
          AuthorizationEventUpdateMainScheduleUuid>
      get copyWith => _$AuthorizationEventUpdateMainScheduleUuidCopyWithImpl<
          AuthorizationEventUpdateMainScheduleUuid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserType userType, String scheduleUuid)
        loginBySearch,
    required TResult Function() updateUserInfo,
    required TResult Function(Completer<User> completer) login,
    required TResult Function() logout,
    required TResult Function(String mainScheduleUuid) updateMainScheduleUuid,
  }) {
    return updateMainScheduleUuid(mainScheduleUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
  }) {
    return updateMainScheduleUuid?.call(mainScheduleUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType userType, String scheduleUuid)? loginBySearch,
    TResult Function()? updateUserInfo,
    TResult Function(Completer<User> completer)? login,
    TResult Function()? logout,
    TResult Function(String mainScheduleUuid)? updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (updateMainScheduleUuid != null) {
      return updateMainScheduleUuid(mainScheduleUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationEventLoginBySearch value)
        loginBySearch,
    required TResult Function(AuthorizationEventUpdateInfo value)
        updateUserInfo,
    required TResult Function(AuthorizationEventLogin value) login,
    required TResult Function(AuthorizationEventLogout value) logout,
    required TResult Function(AuthorizationEventUpdateMainScheduleUuid value)
        updateMainScheduleUuid,
  }) {
    return updateMainScheduleUuid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
  }) {
    return updateMainScheduleUuid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationEventLoginBySearch value)? loginBySearch,
    TResult Function(AuthorizationEventUpdateInfo value)? updateUserInfo,
    TResult Function(AuthorizationEventLogin value)? login,
    TResult Function(AuthorizationEventLogout value)? logout,
    TResult Function(AuthorizationEventUpdateMainScheduleUuid value)?
        updateMainScheduleUuid,
    required TResult orElse(),
  }) {
    if (updateMainScheduleUuid != null) {
      return updateMainScheduleUuid(this);
    }
    return orElse();
  }
}

abstract class AuthorizationEventUpdateMainScheduleUuid
    extends AuthorizationEvent {
  const factory AuthorizationEventUpdateMainScheduleUuid(
          {required String mainScheduleUuid}) =
      _$AuthorizationEventUpdateMainScheduleUuid;
  const AuthorizationEventUpdateMainScheduleUuid._() : super._();

  String get mainScheduleUuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationEventUpdateMainScheduleUuidCopyWith<
          AuthorizationEventUpdateMainScheduleUuid>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthorizationStateTearOff {
  const _$AuthorizationStateTearOff();

  AuthorizationStateNotAuthorized notAuthorized(
      {UserType? userType, String? mainScheduleUuidOverride}) {
    return AuthorizationStateNotAuthorized(
      userType: userType,
      mainScheduleUuidOverride: mainScheduleUuidOverride,
    );
  }

  AuthorizationStateAuthorized authorized(
      {required User user, String? mainScheduleUuidOverride}) {
    return AuthorizationStateAuthorized(
      user: user,
      mainScheduleUuidOverride: mainScheduleUuidOverride,
    );
  }
}

/// @nodoc
const $AuthorizationState = _$AuthorizationStateTearOff();

/// @nodoc
mixin _$AuthorizationState {
  String? get mainScheduleUuidOverride => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserType? userType, String? mainScheduleUuidOverride)
        notAuthorized,
    required TResult Function(User user, String? mainScheduleUuidOverride)
        authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType? userType, String? mainScheduleUuidOverride)?
        notAuthorized,
    TResult Function(User user, String? mainScheduleUuidOverride)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType? userType, String? mainScheduleUuidOverride)?
        notAuthorized,
    TResult Function(User user, String? mainScheduleUuidOverride)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationStateNotAuthorized value)
        notAuthorized,
    required TResult Function(AuthorizationStateAuthorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthorizationStateAuthorized value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthorizationStateAuthorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationStateCopyWith<AuthorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res>;
  $Res call({String? mainScheduleUuidOverride});
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  final AuthorizationState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationState) _then;

  @override
  $Res call({
    Object? mainScheduleUuidOverride = freezed,
  }) {
    return _then(_value.copyWith(
      mainScheduleUuidOverride: mainScheduleUuidOverride == freezed
          ? _value.mainScheduleUuidOverride
          : mainScheduleUuidOverride // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $AuthorizationStateNotAuthorizedCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateNotAuthorizedCopyWith(
          AuthorizationStateNotAuthorized value,
          $Res Function(AuthorizationStateNotAuthorized) then) =
      _$AuthorizationStateNotAuthorizedCopyWithImpl<$Res>;
  @override
  $Res call({UserType? userType, String? mainScheduleUuidOverride});
}

/// @nodoc
class _$AuthorizationStateNotAuthorizedCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateNotAuthorizedCopyWith<$Res> {
  _$AuthorizationStateNotAuthorizedCopyWithImpl(
      AuthorizationStateNotAuthorized _value,
      $Res Function(AuthorizationStateNotAuthorized) _then)
      : super(_value, (v) => _then(v as AuthorizationStateNotAuthorized));

  @override
  AuthorizationStateNotAuthorized get _value =>
      super._value as AuthorizationStateNotAuthorized;

  @override
  $Res call({
    Object? userType = freezed,
    Object? mainScheduleUuidOverride = freezed,
  }) {
    return _then(AuthorizationStateNotAuthorized(
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      mainScheduleUuidOverride: mainScheduleUuidOverride == freezed
          ? _value.mainScheduleUuidOverride
          : mainScheduleUuidOverride // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthorizationStateNotAuthorized
    extends AuthorizationStateNotAuthorized {
  const _$AuthorizationStateNotAuthorized(
      {this.userType, this.mainScheduleUuidOverride})
      : super._();

  @override
  final UserType? userType;
  @override
  final String? mainScheduleUuidOverride;

  @override
  String toString() {
    return 'AuthorizationState.notAuthorized(userType: $userType, mainScheduleUuidOverride: $mainScheduleUuidOverride)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizationStateNotAuthorized &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(
                    other.mainScheduleUuidOverride, mainScheduleUuidOverride) ||
                const DeepCollectionEquality().equals(
                    other.mainScheduleUuidOverride, mainScheduleUuidOverride)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(mainScheduleUuidOverride);

  @JsonKey(ignore: true)
  @override
  $AuthorizationStateNotAuthorizedCopyWith<AuthorizationStateNotAuthorized>
      get copyWith => _$AuthorizationStateNotAuthorizedCopyWithImpl<
          AuthorizationStateNotAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserType? userType, String? mainScheduleUuidOverride)
        notAuthorized,
    required TResult Function(User user, String? mainScheduleUuidOverride)
        authorized,
  }) {
    return notAuthorized(userType, mainScheduleUuidOverride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType? userType, String? mainScheduleUuidOverride)?
        notAuthorized,
    TResult Function(User user, String? mainScheduleUuidOverride)? authorized,
  }) {
    return notAuthorized?.call(userType, mainScheduleUuidOverride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType? userType, String? mainScheduleUuidOverride)?
        notAuthorized,
    TResult Function(User user, String? mainScheduleUuidOverride)? authorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(userType, mainScheduleUuidOverride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationStateNotAuthorized value)
        notAuthorized,
    required TResult Function(AuthorizationStateAuthorized value) authorized,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthorizationStateAuthorized value)? authorized,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthorizationStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizationStateNotAuthorized extends AuthorizationState {
  const factory AuthorizationStateNotAuthorized(
      {UserType? userType,
      String? mainScheduleUuidOverride}) = _$AuthorizationStateNotAuthorized;
  const AuthorizationStateNotAuthorized._() : super._();

  UserType? get userType => throw _privateConstructorUsedError;
  @override
  String? get mainScheduleUuidOverride => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AuthorizationStateNotAuthorizedCopyWith<AuthorizationStateNotAuthorized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateAuthorizedCopyWith<$Res>
    implements $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateAuthorizedCopyWith(
          AuthorizationStateAuthorized value,
          $Res Function(AuthorizationStateAuthorized) then) =
      _$AuthorizationStateAuthorizedCopyWithImpl<$Res>;
  @override
  $Res call({User user, String? mainScheduleUuidOverride});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthorizationStateAuthorizedCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res>
    implements $AuthorizationStateAuthorizedCopyWith<$Res> {
  _$AuthorizationStateAuthorizedCopyWithImpl(
      AuthorizationStateAuthorized _value,
      $Res Function(AuthorizationStateAuthorized) _then)
      : super(_value, (v) => _then(v as AuthorizationStateAuthorized));

  @override
  AuthorizationStateAuthorized get _value =>
      super._value as AuthorizationStateAuthorized;

  @override
  $Res call({
    Object? user = freezed,
    Object? mainScheduleUuidOverride = freezed,
  }) {
    return _then(AuthorizationStateAuthorized(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      mainScheduleUuidOverride: mainScheduleUuidOverride == freezed
          ? _value.mainScheduleUuidOverride
          : mainScheduleUuidOverride // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$AuthorizationStateAuthorized extends AuthorizationStateAuthorized {
  const _$AuthorizationStateAuthorized(
      {required this.user, this.mainScheduleUuidOverride})
      : super._();

  @override
  final User user;
  @override
  final String? mainScheduleUuidOverride;

  @override
  String toString() {
    return 'AuthorizationState.authorized(user: $user, mainScheduleUuidOverride: $mainScheduleUuidOverride)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizationStateAuthorized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(
                    other.mainScheduleUuidOverride, mainScheduleUuidOverride) ||
                const DeepCollectionEquality().equals(
                    other.mainScheduleUuidOverride, mainScheduleUuidOverride)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(mainScheduleUuidOverride);

  @JsonKey(ignore: true)
  @override
  $AuthorizationStateAuthorizedCopyWith<AuthorizationStateAuthorized>
      get copyWith => _$AuthorizationStateAuthorizedCopyWithImpl<
          AuthorizationStateAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UserType? userType, String? mainScheduleUuidOverride)
        notAuthorized,
    required TResult Function(User user, String? mainScheduleUuidOverride)
        authorized,
  }) {
    return authorized(user, mainScheduleUuidOverride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserType? userType, String? mainScheduleUuidOverride)?
        notAuthorized,
    TResult Function(User user, String? mainScheduleUuidOverride)? authorized,
  }) {
    return authorized?.call(user, mainScheduleUuidOverride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserType? userType, String? mainScheduleUuidOverride)?
        notAuthorized,
    TResult Function(User user, String? mainScheduleUuidOverride)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user, mainScheduleUuidOverride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthorizationStateNotAuthorized value)
        notAuthorized,
    required TResult Function(AuthorizationStateAuthorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthorizationStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthorizationStateAuthorized value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthorizationStateNotAuthorized value)? notAuthorized,
    TResult Function(AuthorizationStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizationStateAuthorized extends AuthorizationState {
  const factory AuthorizationStateAuthorized(
      {required User user,
      String? mainScheduleUuidOverride}) = _$AuthorizationStateAuthorized;
  const AuthorizationStateAuthorized._() : super._();

  User get user => throw _privateConstructorUsedError;
  @override
  String? get mainScheduleUuidOverride => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AuthorizationStateAuthorizedCopyWith<AuthorizationStateAuthorized>
      get copyWith => throw _privateConstructorUsedError;
}
