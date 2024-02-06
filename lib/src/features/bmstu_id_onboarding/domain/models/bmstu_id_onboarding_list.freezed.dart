// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bmstu_id_onboarding_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BmstuIdOnboardingListTearOff {
  const _$BmstuIdOnboardingListTearOff();

  _OnboardingList call({required List<BmstuIdOnboardingItem> items}) {
    return _OnboardingList(
      items: items,
    );
  }
}

/// @nodoc
const $BmstuIdOnboardingList = _$BmstuIdOnboardingListTearOff();

/// @nodoc
mixin _$BmstuIdOnboardingList {
  List<BmstuIdOnboardingItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BmstuIdOnboardingListCopyWith<BmstuIdOnboardingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BmstuIdOnboardingListCopyWith<$Res> {
  factory $BmstuIdOnboardingListCopyWith(BmstuIdOnboardingList value,
          $Res Function(BmstuIdOnboardingList) then) =
      _$BmstuIdOnboardingListCopyWithImpl<$Res>;
  $Res call({List<BmstuIdOnboardingItem> items});
}

/// @nodoc
class _$BmstuIdOnboardingListCopyWithImpl<$Res>
    implements $BmstuIdOnboardingListCopyWith<$Res> {
  _$BmstuIdOnboardingListCopyWithImpl(this._value, this._then);

  final BmstuIdOnboardingList _value;
  // ignore: unused_field
  final $Res Function(BmstuIdOnboardingList) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BmstuIdOnboardingItem>,
    ));
  }
}

/// @nodoc
abstract class _$OnboardingListCopyWith<$Res>
    implements $BmstuIdOnboardingListCopyWith<$Res> {
  factory _$OnboardingListCopyWith(
          _OnboardingList value, $Res Function(_OnboardingList) then) =
      __$OnboardingListCopyWithImpl<$Res>;
  @override
  $Res call({List<BmstuIdOnboardingItem> items});
}

/// @nodoc
class __$OnboardingListCopyWithImpl<$Res>
    extends _$BmstuIdOnboardingListCopyWithImpl<$Res>
    implements _$OnboardingListCopyWith<$Res> {
  __$OnboardingListCopyWithImpl(
      _OnboardingList _value, $Res Function(_OnboardingList) _then)
      : super(_value, (v) => _then(v as _OnboardingList));

  @override
  _OnboardingList get _value => super._value as _OnboardingList;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_OnboardingList(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BmstuIdOnboardingItem>,
    ));
  }
}

/// @nodoc

class _$_OnboardingList extends _OnboardingList {
  const _$_OnboardingList({required this.items}) : super._();

  @override
  final List<BmstuIdOnboardingItem> items;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingList &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$OnboardingListCopyWith<_OnboardingList> get copyWith =>
      __$OnboardingListCopyWithImpl<_OnboardingList>(this, _$identity);
}

abstract class _OnboardingList extends BmstuIdOnboardingList {
  const factory _OnboardingList({required List<BmstuIdOnboardingItem> items}) =
      _$_OnboardingList;
  const _OnboardingList._() : super._();

  @override
  List<BmstuIdOnboardingItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnboardingListCopyWith<_OnboardingList> get copyWith =>
      throw _privateConstructorUsedError;
}
