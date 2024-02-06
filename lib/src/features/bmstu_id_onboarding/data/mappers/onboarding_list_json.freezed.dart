// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_list_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingListJson _$OnboardingListJsonFromJson(Map<String, dynamic> json) {
  return _OnboardingListJson.fromJson(json);
}

/// @nodoc
class _$OnboardingListJsonTearOff {
  const _$OnboardingListJsonTearOff();

  _OnboardingListJson call({required List<OnboardingItemJson> items}) {
    return _OnboardingListJson(
      items: items,
    );
  }

  OnboardingListJson fromJson(Map<String, Object> json) {
    return OnboardingListJson.fromJson(json);
  }
}

/// @nodoc
const $OnboardingListJson = _$OnboardingListJsonTearOff();

/// @nodoc
mixin _$OnboardingListJson {
  List<OnboardingItemJson> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingListJsonCopyWith<OnboardingListJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingListJsonCopyWith<$Res> {
  factory $OnboardingListJsonCopyWith(
          OnboardingListJson value, $Res Function(OnboardingListJson) then) =
      _$OnboardingListJsonCopyWithImpl<$Res>;
  $Res call({List<OnboardingItemJson> items});
}

/// @nodoc
class _$OnboardingListJsonCopyWithImpl<$Res>
    implements $OnboardingListJsonCopyWith<$Res> {
  _$OnboardingListJsonCopyWithImpl(this._value, this._then);

  final OnboardingListJson _value;
  // ignore: unused_field
  final $Res Function(OnboardingListJson) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OnboardingItemJson>,
    ));
  }
}

/// @nodoc
abstract class _$OnboardingListJsonCopyWith<$Res>
    implements $OnboardingListJsonCopyWith<$Res> {
  factory _$OnboardingListJsonCopyWith(
          _OnboardingListJson value, $Res Function(_OnboardingListJson) then) =
      __$OnboardingListJsonCopyWithImpl<$Res>;
  @override
  $Res call({List<OnboardingItemJson> items});
}

/// @nodoc
class __$OnboardingListJsonCopyWithImpl<$Res>
    extends _$OnboardingListJsonCopyWithImpl<$Res>
    implements _$OnboardingListJsonCopyWith<$Res> {
  __$OnboardingListJsonCopyWithImpl(
      _OnboardingListJson _value, $Res Function(_OnboardingListJson) _then)
      : super(_value, (v) => _then(v as _OnboardingListJson));

  @override
  _OnboardingListJson get _value => super._value as _OnboardingListJson;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_OnboardingListJson(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OnboardingItemJson>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnboardingListJson extends _OnboardingListJson {
  const _$_OnboardingListJson({required this.items}) : super._();

  factory _$_OnboardingListJson.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardingListJsonFromJson(json);

  @override
  final List<OnboardingItemJson> items;

  @override
  String toString() {
    return 'OnboardingListJson(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingListJson &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$OnboardingListJsonCopyWith<_OnboardingListJson> get copyWith =>
      __$OnboardingListJsonCopyWithImpl<_OnboardingListJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardingListJsonToJson(this);
  }
}

abstract class _OnboardingListJson extends OnboardingListJson {
  const factory _OnboardingListJson({required List<OnboardingItemJson> items}) =
      _$_OnboardingListJson;
  const _OnboardingListJson._() : super._();

  factory _OnboardingListJson.fromJson(Map<String, dynamic> json) =
      _$_OnboardingListJson.fromJson;

  @override
  List<OnboardingItemJson> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnboardingListJsonCopyWith<_OnboardingListJson> get copyWith =>
      throw _privateConstructorUsedError;
}
