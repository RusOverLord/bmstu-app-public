// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bmstu_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BmstuIdTearOff {
  const _$BmstuIdTearOff();

  BmstuIdEmpty empty() {
    return const BmstuIdEmpty();
  }

  BmstuIdData data(
      {required bool accessIsAllowed,
      required String qrString,
      required DateTime? expiredAt}) {
    return BmstuIdData(
      accessIsAllowed: accessIsAllowed,
      qrString: qrString,
      expiredAt: expiredAt,
    );
  }
}

/// @nodoc
const $BmstuId = _$BmstuIdTearOff();

/// @nodoc
mixin _$BmstuId {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BmstuIdEmpty value) empty,
    required TResult Function(BmstuIdData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BmstuIdEmpty value)? empty,
    TResult Function(BmstuIdData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BmstuIdEmpty value)? empty,
    TResult Function(BmstuIdData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BmstuIdCopyWith<$Res> {
  factory $BmstuIdCopyWith(BmstuId value, $Res Function(BmstuId) then) =
      _$BmstuIdCopyWithImpl<$Res>;
}

/// @nodoc
class _$BmstuIdCopyWithImpl<$Res> implements $BmstuIdCopyWith<$Res> {
  _$BmstuIdCopyWithImpl(this._value, this._then);

  final BmstuId _value;
  // ignore: unused_field
  final $Res Function(BmstuId) _then;
}

/// @nodoc
abstract class $BmstuIdEmptyCopyWith<$Res> {
  factory $BmstuIdEmptyCopyWith(
          BmstuIdEmpty value, $Res Function(BmstuIdEmpty) then) =
      _$BmstuIdEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$BmstuIdEmptyCopyWithImpl<$Res> extends _$BmstuIdCopyWithImpl<$Res>
    implements $BmstuIdEmptyCopyWith<$Res> {
  _$BmstuIdEmptyCopyWithImpl(
      BmstuIdEmpty _value, $Res Function(BmstuIdEmpty) _then)
      : super(_value, (v) => _then(v as BmstuIdEmpty));

  @override
  BmstuIdEmpty get _value => super._value as BmstuIdEmpty;
}

/// @nodoc

class _$BmstuIdEmpty extends BmstuIdEmpty {
  const _$BmstuIdEmpty() : super._();

  @override
  String toString() {
    return 'BmstuId.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BmstuIdEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)
        data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)?
        data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)?
        data,
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
    required TResult Function(BmstuIdEmpty value) empty,
    required TResult Function(BmstuIdData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BmstuIdEmpty value)? empty,
    TResult Function(BmstuIdData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BmstuIdEmpty value)? empty,
    TResult Function(BmstuIdData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class BmstuIdEmpty extends BmstuId {
  const factory BmstuIdEmpty() = _$BmstuIdEmpty;
  const BmstuIdEmpty._() : super._();
}

/// @nodoc
abstract class $BmstuIdDataCopyWith<$Res> {
  factory $BmstuIdDataCopyWith(
          BmstuIdData value, $Res Function(BmstuIdData) then) =
      _$BmstuIdDataCopyWithImpl<$Res>;
  $Res call({bool accessIsAllowed, String qrString, DateTime? expiredAt});
}

/// @nodoc
class _$BmstuIdDataCopyWithImpl<$Res> extends _$BmstuIdCopyWithImpl<$Res>
    implements $BmstuIdDataCopyWith<$Res> {
  _$BmstuIdDataCopyWithImpl(
      BmstuIdData _value, $Res Function(BmstuIdData) _then)
      : super(_value, (v) => _then(v as BmstuIdData));

  @override
  BmstuIdData get _value => super._value as BmstuIdData;

  @override
  $Res call({
    Object? accessIsAllowed = freezed,
    Object? qrString = freezed,
    Object? expiredAt = freezed,
  }) {
    return _then(BmstuIdData(
      accessIsAllowed: accessIsAllowed == freezed
          ? _value.accessIsAllowed
          : accessIsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      qrString: qrString == freezed
          ? _value.qrString
          : qrString // ignore: cast_nullable_to_non_nullable
              as String,
      expiredAt: expiredAt == freezed
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$BmstuIdData extends BmstuIdData {
  const _$BmstuIdData(
      {required this.accessIsAllowed,
      required this.qrString,
      required this.expiredAt})
      : super._();

  @override
  final bool accessIsAllowed;
  @override
  final String qrString;
  @override
  final DateTime? expiredAt;

  @override
  String toString() {
    return 'BmstuId.data(accessIsAllowed: $accessIsAllowed, qrString: $qrString, expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BmstuIdData &&
            (identical(other.accessIsAllowed, accessIsAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.accessIsAllowed, accessIsAllowed)) &&
            (identical(other.qrString, qrString) ||
                const DeepCollectionEquality()
                    .equals(other.qrString, qrString)) &&
            (identical(other.expiredAt, expiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiredAt, expiredAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessIsAllowed) ^
      const DeepCollectionEquality().hash(qrString) ^
      const DeepCollectionEquality().hash(expiredAt);

  @JsonKey(ignore: true)
  @override
  $BmstuIdDataCopyWith<BmstuIdData> get copyWith =>
      _$BmstuIdDataCopyWithImpl<BmstuIdData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)
        data,
  }) {
    return data(accessIsAllowed, qrString, expiredAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)?
        data,
  }) {
    return data?.call(accessIsAllowed, qrString, expiredAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            bool accessIsAllowed, String qrString, DateTime? expiredAt)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(accessIsAllowed, qrString, expiredAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BmstuIdEmpty value) empty,
    required TResult Function(BmstuIdData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BmstuIdEmpty value)? empty,
    TResult Function(BmstuIdData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BmstuIdEmpty value)? empty,
    TResult Function(BmstuIdData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class BmstuIdData extends BmstuId {
  const factory BmstuIdData(
      {required bool accessIsAllowed,
      required String qrString,
      required DateTime? expiredAt}) = _$BmstuIdData;
  const BmstuIdData._() : super._();

  bool get accessIsAllowed => throw _privateConstructorUsedError;
  String get qrString => throw _privateConstructorUsedError;
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BmstuIdDataCopyWith<BmstuIdData> get copyWith =>
      throw _privateConstructorUsedError;
}
