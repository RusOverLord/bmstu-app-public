// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritesEventTearOff {
  const _$FavoritesEventTearOff();

  FetchFavoritesEvent fetch() {
    return const FetchFavoritesEvent();
  }

  AddFavoriteEvent addFavorite({required Schedule schedule}) {
    return AddFavoriteEvent(
      schedule: schedule,
    );
  }

  RemoveFavoriteEvent removeFavorite({required String uuid}) {
    return RemoveFavoriteEvent(
      uuid: uuid,
    );
  }
}

/// @nodoc
const $FavoritesEvent = _$FavoritesEventTearOff();

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Schedule schedule) addFavorite,
    required TResult Function(String uuid) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFavoritesEvent value) fetch,
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  final FavoritesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritesEvent) _then;
}

/// @nodoc
abstract class $FetchFavoritesEventCopyWith<$Res> {
  factory $FetchFavoritesEventCopyWith(
          FetchFavoritesEvent value, $Res Function(FetchFavoritesEvent) then) =
      _$FetchFavoritesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchFavoritesEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements $FetchFavoritesEventCopyWith<$Res> {
  _$FetchFavoritesEventCopyWithImpl(
      FetchFavoritesEvent _value, $Res Function(FetchFavoritesEvent) _then)
      : super(_value, (v) => _then(v as FetchFavoritesEvent));

  @override
  FetchFavoritesEvent get _value => super._value as FetchFavoritesEvent;
}

/// @nodoc

class _$FetchFavoritesEvent extends FetchFavoritesEvent {
  const _$FetchFavoritesEvent() : super._();

  @override
  String toString() {
    return 'FavoritesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchFavoritesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Schedule schedule) addFavorite,
    required TResult Function(String uuid) removeFavorite,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFavoritesEvent value) fetch,
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchFavoritesEvent extends FavoritesEvent {
  const factory FetchFavoritesEvent() = _$FetchFavoritesEvent;
  const FetchFavoritesEvent._() : super._();
}

/// @nodoc
abstract class $AddFavoriteEventCopyWith<$Res> {
  factory $AddFavoriteEventCopyWith(
          AddFavoriteEvent value, $Res Function(AddFavoriteEvent) then) =
      _$AddFavoriteEventCopyWithImpl<$Res>;
  $Res call({Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$AddFavoriteEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements $AddFavoriteEventCopyWith<$Res> {
  _$AddFavoriteEventCopyWithImpl(
      AddFavoriteEvent _value, $Res Function(AddFavoriteEvent) _then)
      : super(_value, (v) => _then(v as AddFavoriteEvent));

  @override
  AddFavoriteEvent get _value => super._value as AddFavoriteEvent;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(AddFavoriteEvent(
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

class _$AddFavoriteEvent extends AddFavoriteEvent {
  const _$AddFavoriteEvent({required this.schedule}) : super._();

  @override
  final Schedule schedule;

  @override
  String toString() {
    return 'FavoritesEvent.addFavorite(schedule: $schedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddFavoriteEvent &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(schedule);

  @JsonKey(ignore: true)
  @override
  $AddFavoriteEventCopyWith<AddFavoriteEvent> get copyWith =>
      _$AddFavoriteEventCopyWithImpl<AddFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Schedule schedule) addFavorite,
    required TResult Function(String uuid) removeFavorite,
  }) {
    return addFavorite(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
  }) {
    return addFavorite?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFavoritesEvent value) fetch,
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteEvent extends FavoritesEvent {
  const factory AddFavoriteEvent({required Schedule schedule}) =
      _$AddFavoriteEvent;
  const AddFavoriteEvent._() : super._();

  Schedule get schedule => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddFavoriteEventCopyWith<AddFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFavoriteEventCopyWith<$Res> {
  factory $RemoveFavoriteEventCopyWith(
          RemoveFavoriteEvent value, $Res Function(RemoveFavoriteEvent) then) =
      _$RemoveFavoriteEventCopyWithImpl<$Res>;
  $Res call({String uuid});
}

/// @nodoc
class _$RemoveFavoriteEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res>
    implements $RemoveFavoriteEventCopyWith<$Res> {
  _$RemoveFavoriteEventCopyWithImpl(
      RemoveFavoriteEvent _value, $Res Function(RemoveFavoriteEvent) _then)
      : super(_value, (v) => _then(v as RemoveFavoriteEvent));

  @override
  RemoveFavoriteEvent get _value => super._value as RemoveFavoriteEvent;

  @override
  $Res call({
    Object? uuid = freezed,
  }) {
    return _then(RemoveFavoriteEvent(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteEvent extends RemoveFavoriteEvent {
  const _$RemoveFavoriteEvent({required this.uuid}) : super._();

  @override
  final String uuid;

  @override
  String toString() {
    return 'FavoritesEvent.removeFavorite(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFavoriteEvent &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  $RemoveFavoriteEventCopyWith<RemoveFavoriteEvent> get copyWith =>
      _$RemoveFavoriteEventCopyWithImpl<RemoveFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Schedule schedule) addFavorite,
    required TResult Function(String uuid) removeFavorite,
  }) {
    return removeFavorite(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
  }) {
    return removeFavorite?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Schedule schedule)? addFavorite,
    TResult Function(String uuid)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchFavoritesEvent value) fetch,
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchFavoritesEvent value)? fetch,
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteEvent extends FavoritesEvent {
  const factory RemoveFavoriteEvent({required String uuid}) =
      _$RemoveFavoriteEvent;
  const RemoveFavoriteEvent._() : super._();

  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveFavoriteEventCopyWith<RemoveFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

  FavoritesStateIdle idle({Favorites? favorites}) {
    return FavoritesStateIdle(
      favorites: favorites,
    );
  }

  FavoritesStateError error({Favorites? favorites}) {
    return FavoritesStateError(
      favorites: favorites,
    );
  }
}

/// @nodoc
const $FavoritesState = _$FavoritesStateTearOff();

/// @nodoc
mixin _$FavoritesState {
  Favorites? get favorites => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Favorites? favorites) idle,
    required TResult Function(Favorites? favorites) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Favorites? favorites)? idle,
    TResult Function(Favorites? favorites)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Favorites? favorites)? idle,
    TResult Function(Favorites? favorites)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateIdle value) idle,
    required TResult Function(FavoritesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritesStateIdle value)? idle,
    TResult Function(FavoritesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateIdle value)? idle,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
  $Res call({Favorites? favorites});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;

  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Favorites?,
    ));
  }
}

/// @nodoc
abstract class $FavoritesStateIdleCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateIdleCopyWith(
          FavoritesStateIdle value, $Res Function(FavoritesStateIdle) then) =
      _$FavoritesStateIdleCopyWithImpl<$Res>;
  @override
  $Res call({Favorites? favorites});
}

/// @nodoc
class _$FavoritesStateIdleCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateIdleCopyWith<$Res> {
  _$FavoritesStateIdleCopyWithImpl(
      FavoritesStateIdle _value, $Res Function(FavoritesStateIdle) _then)
      : super(_value, (v) => _then(v as FavoritesStateIdle));

  @override
  FavoritesStateIdle get _value => super._value as FavoritesStateIdle;

  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(FavoritesStateIdle(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Favorites?,
    ));
  }
}

/// @nodoc

class _$FavoritesStateIdle extends FavoritesStateIdle {
  const _$FavoritesStateIdle({this.favorites}) : super._();

  @override
  final Favorites? favorites;

  @override
  String toString() {
    return 'FavoritesState.idle(favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritesStateIdle &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorites);

  @JsonKey(ignore: true)
  @override
  $FavoritesStateIdleCopyWith<FavoritesStateIdle> get copyWith =>
      _$FavoritesStateIdleCopyWithImpl<FavoritesStateIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Favorites? favorites) idle,
    required TResult Function(Favorites? favorites) error,
  }) {
    return idle(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Favorites? favorites)? idle,
    TResult Function(Favorites? favorites)? error,
  }) {
    return idle?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Favorites? favorites)? idle,
    TResult Function(Favorites? favorites)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateIdle value) idle,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritesStateIdle value)? idle,
    TResult Function(FavoritesStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateIdle value)? idle,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateIdle extends FavoritesState {
  const factory FavoritesStateIdle({Favorites? favorites}) =
      _$FavoritesStateIdle;
  const FavoritesStateIdle._() : super._();

  @override
  Favorites? get favorites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FavoritesStateIdleCopyWith<FavoritesStateIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateErrorCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateErrorCopyWith(
          FavoritesStateError value, $Res Function(FavoritesStateError) then) =
      _$FavoritesStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({Favorites? favorites});
}

/// @nodoc
class _$FavoritesStateErrorCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateErrorCopyWith<$Res> {
  _$FavoritesStateErrorCopyWithImpl(
      FavoritesStateError _value, $Res Function(FavoritesStateError) _then)
      : super(_value, (v) => _then(v as FavoritesStateError));

  @override
  FavoritesStateError get _value => super._value as FavoritesStateError;

  @override
  $Res call({
    Object? favorites = freezed,
  }) {
    return _then(FavoritesStateError(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as Favorites?,
    ));
  }
}

/// @nodoc

class _$FavoritesStateError extends FavoritesStateError {
  const _$FavoritesStateError({this.favorites}) : super._();

  @override
  final Favorites? favorites;

  @override
  String toString() {
    return 'FavoritesState.error(favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritesStateError &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(favorites);

  @JsonKey(ignore: true)
  @override
  $FavoritesStateErrorCopyWith<FavoritesStateError> get copyWith =>
      _$FavoritesStateErrorCopyWithImpl<FavoritesStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Favorites? favorites) idle,
    required TResult Function(Favorites? favorites) error,
  }) {
    return error(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Favorites? favorites)? idle,
    TResult Function(Favorites? favorites)? error,
  }) {
    return error?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Favorites? favorites)? idle,
    TResult Function(Favorites? favorites)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateIdle value) idle,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritesStateIdle value)? idle,
    TResult Function(FavoritesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateIdle value)? idle,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateError extends FavoritesState {
  const factory FavoritesStateError({Favorites? favorites}) =
      _$FavoritesStateError;
  const FavoritesStateError._() : super._();

  @override
  Favorites? get favorites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FavoritesStateErrorCopyWith<FavoritesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
