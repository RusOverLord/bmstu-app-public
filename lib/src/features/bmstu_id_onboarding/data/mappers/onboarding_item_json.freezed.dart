// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_item_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingItemJson _$OnboardingItemJsonFromJson(Map<String, dynamic> json) {
  return _OnboardingItemJson.fromJson(json);
}

/// @nodoc
class _$OnboardingItemJsonTearOff {
  const _$OnboardingItemJsonTearOff();

  _OnboardingItemJson call(
      {required String description, required String title}) {
    return _OnboardingItemJson(
      description: description,
      title: title,
    );
  }

  OnboardingItemJson fromJson(Map<String, Object> json) {
    return OnboardingItemJson.fromJson(json);
  }
}

/// @nodoc
const $OnboardingItemJson = _$OnboardingItemJsonTearOff();

/// @nodoc
mixin _$OnboardingItemJson {
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingItemJsonCopyWith<OnboardingItemJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingItemJsonCopyWith<$Res> {
  factory $OnboardingItemJsonCopyWith(
          OnboardingItemJson value, $Res Function(OnboardingItemJson) then) =
      _$OnboardingItemJsonCopyWithImpl<$Res>;
  $Res call({String description, String title});
}

/// @nodoc
class _$OnboardingItemJsonCopyWithImpl<$Res>
    implements $OnboardingItemJsonCopyWith<$Res> {
  _$OnboardingItemJsonCopyWithImpl(this._value, this._then);

  final OnboardingItemJson _value;
  // ignore: unused_field
  final $Res Function(OnboardingItemJson) _then;

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
abstract class _$OnboardingItemJsonCopyWith<$Res>
    implements $OnboardingItemJsonCopyWith<$Res> {
  factory _$OnboardingItemJsonCopyWith(
          _OnboardingItemJson value, $Res Function(_OnboardingItemJson) then) =
      __$OnboardingItemJsonCopyWithImpl<$Res>;
  @override
  $Res call({String description, String title});
}

/// @nodoc
class __$OnboardingItemJsonCopyWithImpl<$Res>
    extends _$OnboardingItemJsonCopyWithImpl<$Res>
    implements _$OnboardingItemJsonCopyWith<$Res> {
  __$OnboardingItemJsonCopyWithImpl(
      _OnboardingItemJson _value, $Res Function(_OnboardingItemJson) _then)
      : super(_value, (v) => _then(v as _OnboardingItemJson));

  @override
  _OnboardingItemJson get _value => super._value as _OnboardingItemJson;

  @override
  $Res call({
    Object? description = freezed,
    Object? title = freezed,
  }) {
    return _then(_OnboardingItemJson(
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
@JsonSerializable()
class _$_OnboardingItemJson extends _OnboardingItemJson {
  const _$_OnboardingItemJson({required this.description, required this.title})
      : super._();

  factory _$_OnboardingItemJson.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardingItemJsonFromJson(json);

  @override
  final String description;
  @override
  final String title;

  @override
  String toString() {
    return 'OnboardingItemJson(description: $description, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingItemJson &&
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
  _$OnboardingItemJsonCopyWith<_OnboardingItemJson> get copyWith =>
      __$OnboardingItemJsonCopyWithImpl<_OnboardingItemJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardingItemJsonToJson(this);
  }
}

abstract class _OnboardingItemJson extends OnboardingItemJson {
  const factory _OnboardingItemJson(
      {required String description,
      required String title}) = _$_OnboardingItemJson;
  const _OnboardingItemJson._() : super._();

  factory _OnboardingItemJson.fromJson(Map<String, dynamic> json) =
      _$_OnboardingItemJson.fromJson;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnboardingItemJsonCopyWith<_OnboardingItemJson> get copyWith =>
      throw _privateConstructorUsedError;
}
