// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bmstu_id_onboarding_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BmstuIdOnboardingItemTearOff {
  const _$BmstuIdOnboardingItemTearOff();

  _OnboardingItem call({required String description, required String title}) {
    return _OnboardingItem(
      description: description,
      title: title,
    );
  }
}

/// @nodoc
const $BmstuIdOnboardingItem = _$BmstuIdOnboardingItemTearOff();

/// @nodoc
mixin _$BmstuIdOnboardingItem {
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BmstuIdOnboardingItemCopyWith<BmstuIdOnboardingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BmstuIdOnboardingItemCopyWith<$Res> {
  factory $BmstuIdOnboardingItemCopyWith(BmstuIdOnboardingItem value,
          $Res Function(BmstuIdOnboardingItem) then) =
      _$BmstuIdOnboardingItemCopyWithImpl<$Res>;
  $Res call({String description, String title});
}

/// @nodoc
class _$BmstuIdOnboardingItemCopyWithImpl<$Res>
    implements $BmstuIdOnboardingItemCopyWith<$Res> {
  _$BmstuIdOnboardingItemCopyWithImpl(this._value, this._then);

  final BmstuIdOnboardingItem _value;
  // ignore: unused_field
  final $Res Function(BmstuIdOnboardingItem) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OnboardingItemCopyWith<$Res>
    implements $BmstuIdOnboardingItemCopyWith<$Res> {
  factory _$OnboardingItemCopyWith(
          _OnboardingItem value, $Res Function(_OnboardingItem) then) =
      __$OnboardingItemCopyWithImpl<$Res>;
  @override
  $Res call({String description, String title});
}

/// @nodoc
class __$OnboardingItemCopyWithImpl<$Res>
    extends _$BmstuIdOnboardingItemCopyWithImpl<$Res>
    implements _$OnboardingItemCopyWith<$Res> {
  __$OnboardingItemCopyWithImpl(
      _OnboardingItem _value, $Res Function(_OnboardingItem) _then)
      : super(_value, (v) => _then(v as _OnboardingItem));

  @override
  _OnboardingItem get _value => super._value as _OnboardingItem;

  @override
  $Res call({
    Object? description = freezed,
    Object? title = freezed,
  }) {
    return _then(_OnboardingItem(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnboardingItem implements _OnboardingItem {
  const _$_OnboardingItem({required this.description, required this.title});

  @override
  final String description;
  @override
  final String title;

  @override
  String toString() {
    return 'BmstuIdOnboardingItem(description: $description, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingItem &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$OnboardingItemCopyWith<_OnboardingItem> get copyWith =>
      __$OnboardingItemCopyWithImpl<_OnboardingItem>(this, _$identity);
}

abstract class _OnboardingItem implements BmstuIdOnboardingItem {
  const factory _OnboardingItem(
      {required String description, required String title}) = _$_OnboardingItem;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnboardingItemCopyWith<_OnboardingItem> get copyWith =>
      throw _privateConstructorUsedError;
}
