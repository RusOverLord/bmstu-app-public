// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_dialog_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchDialogResultTearOff {
  const _$SearchDialogResultTearOff();

  SearchDialogResultFound found({required String scheduleUuid}) {
    return SearchDialogResultFound(
      scheduleUuid: scheduleUuid,
    );
  }

  SearchDialogResultCancel cancel() {
    return const SearchDialogResultCancel();
  }
}

/// @nodoc
const $SearchDialogResult = _$SearchDialogResultTearOff();

/// @nodoc
mixin _$SearchDialogResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String scheduleUuid) found,
    required TResult Function() cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String scheduleUuid)? found,
    TResult Function()? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleUuid)? found,
    TResult Function()? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDialogResultFound value) found,
    required TResult Function(SearchDialogResultCancel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchDialogResultFound value)? found,
    TResult Function(SearchDialogResultCancel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDialogResultFound value)? found,
    TResult Function(SearchDialogResultCancel value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDialogResultCopyWith<$Res> {
  factory $SearchDialogResultCopyWith(
          SearchDialogResult value, $Res Function(SearchDialogResult) then) =
      _$SearchDialogResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDialogResultCopyWithImpl<$Res>
    implements $SearchDialogResultCopyWith<$Res> {
  _$SearchDialogResultCopyWithImpl(this._value, this._then);

  final SearchDialogResult _value;
  // ignore: unused_field
  final $Res Function(SearchDialogResult) _then;
}

/// @nodoc
abstract class $SearchDialogResultFoundCopyWith<$Res> {
  factory $SearchDialogResultFoundCopyWith(SearchDialogResultFound value,
          $Res Function(SearchDialogResultFound) then) =
      _$SearchDialogResultFoundCopyWithImpl<$Res>;
  $Res call({String scheduleUuid});
}

/// @nodoc
class _$SearchDialogResultFoundCopyWithImpl<$Res>
    extends _$SearchDialogResultCopyWithImpl<$Res>
    implements $SearchDialogResultFoundCopyWith<$Res> {
  _$SearchDialogResultFoundCopyWithImpl(SearchDialogResultFound _value,
      $Res Function(SearchDialogResultFound) _then)
      : super(_value, (v) => _then(v as SearchDialogResultFound));

  @override
  SearchDialogResultFound get _value => super._value as SearchDialogResultFound;

  @override
  $Res call({
    Object? scheduleUuid = freezed,
  }) {
    return _then(SearchDialogResultFound(
      scheduleUuid: scheduleUuid == freezed
          ? _value.scheduleUuid
          : scheduleUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchDialogResultFound extends SearchDialogResultFound {
  const _$SearchDialogResultFound({required this.scheduleUuid}) : super._();

  @override
  final String scheduleUuid;

  @override
  String toString() {
    return 'SearchDialogResult.found(scheduleUuid: $scheduleUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchDialogResultFound &&
            (identical(other.scheduleUuid, scheduleUuid) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleUuid, scheduleUuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scheduleUuid);

  @JsonKey(ignore: true)
  @override
  $SearchDialogResultFoundCopyWith<SearchDialogResultFound> get copyWith =>
      _$SearchDialogResultFoundCopyWithImpl<SearchDialogResultFound>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String scheduleUuid) found,
    required TResult Function() cancel,
  }) {
    return found(scheduleUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String scheduleUuid)? found,
    TResult Function()? cancel,
  }) {
    return found?.call(scheduleUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleUuid)? found,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(scheduleUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDialogResultFound value) found,
    required TResult Function(SearchDialogResultCancel value) cancel,
  }) {
    return found(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchDialogResultFound value)? found,
    TResult Function(SearchDialogResultCancel value)? cancel,
  }) {
    return found?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDialogResultFound value)? found,
    TResult Function(SearchDialogResultCancel value)? cancel,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(this);
    }
    return orElse();
  }
}

abstract class SearchDialogResultFound extends SearchDialogResult {
  const factory SearchDialogResultFound({required String scheduleUuid}) =
      _$SearchDialogResultFound;
  const SearchDialogResultFound._() : super._();

  String get scheduleUuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDialogResultFoundCopyWith<SearchDialogResultFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDialogResultCancelCopyWith<$Res> {
  factory $SearchDialogResultCancelCopyWith(SearchDialogResultCancel value,
          $Res Function(SearchDialogResultCancel) then) =
      _$SearchDialogResultCancelCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchDialogResultCancelCopyWithImpl<$Res>
    extends _$SearchDialogResultCopyWithImpl<$Res>
    implements $SearchDialogResultCancelCopyWith<$Res> {
  _$SearchDialogResultCancelCopyWithImpl(SearchDialogResultCancel _value,
      $Res Function(SearchDialogResultCancel) _then)
      : super(_value, (v) => _then(v as SearchDialogResultCancel));

  @override
  SearchDialogResultCancel get _value =>
      super._value as SearchDialogResultCancel;
}

/// @nodoc

class _$SearchDialogResultCancel extends SearchDialogResultCancel {
  const _$SearchDialogResultCancel() : super._();

  @override
  String toString() {
    return 'SearchDialogResult.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchDialogResultCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String scheduleUuid) found,
    required TResult Function() cancel,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String scheduleUuid)? found,
    TResult Function()? cancel,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String scheduleUuid)? found,
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDialogResultFound value) found,
    required TResult Function(SearchDialogResultCancel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchDialogResultFound value)? found,
    TResult Function(SearchDialogResultCancel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDialogResultFound value)? found,
    TResult Function(SearchDialogResultCancel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class SearchDialogResultCancel extends SearchDialogResult {
  const factory SearchDialogResultCancel() = _$SearchDialogResultCancel;
  const SearchDialogResultCancel._() : super._();
}
