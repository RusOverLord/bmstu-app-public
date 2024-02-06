// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'end_of_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EndOfSupport _$EndOfSupportFromJson(Map<String, dynamic> json) {
  return _EndOfSupport.fromJson(json);
}

/// @nodoc
class _$EndOfSupportTearOff {
  const _$EndOfSupportTearOff();

  _EndOfSupport call(
      {required String title, required String body, required String url}) {
    return _EndOfSupport(
      title: title,
      body: body,
      url: url,
    );
  }

  EndOfSupport fromJson(Map<String, Object> json) {
    return EndOfSupport.fromJson(json);
  }
}

/// @nodoc
const $EndOfSupport = _$EndOfSupportTearOff();

/// @nodoc
mixin _$EndOfSupport {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndOfSupportCopyWith<EndOfSupport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndOfSupportCopyWith<$Res> {
  factory $EndOfSupportCopyWith(
          EndOfSupport value, $Res Function(EndOfSupport) then) =
      _$EndOfSupportCopyWithImpl<$Res>;
  $Res call({String title, String body, String url});
}

/// @nodoc
class _$EndOfSupportCopyWithImpl<$Res> implements $EndOfSupportCopyWith<$Res> {
  _$EndOfSupportCopyWithImpl(this._value, this._then);

  final EndOfSupport _value;
  // ignore: unused_field
  final $Res Function(EndOfSupport) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EndOfSupportCopyWith<$Res>
    implements $EndOfSupportCopyWith<$Res> {
  factory _$EndOfSupportCopyWith(
          _EndOfSupport value, $Res Function(_EndOfSupport) then) =
      __$EndOfSupportCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body, String url});
}

/// @nodoc
class __$EndOfSupportCopyWithImpl<$Res> extends _$EndOfSupportCopyWithImpl<$Res>
    implements _$EndOfSupportCopyWith<$Res> {
  __$EndOfSupportCopyWithImpl(
      _EndOfSupport _value, $Res Function(_EndOfSupport) _then)
      : super(_value, (v) => _then(v as _EndOfSupport));

  @override
  _EndOfSupport get _value => super._value as _EndOfSupport;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? url = freezed,
  }) {
    return _then(_EndOfSupport(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EndOfSupport implements _EndOfSupport {
  const _$_EndOfSupport(
      {required this.title, required this.body, required this.url});

  factory _$_EndOfSupport.fromJson(Map<String, dynamic> json) =>
      _$$_EndOfSupportFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String url;

  @override
  String toString() {
    return 'EndOfSupport(title: $title, body: $body, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndOfSupport &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$EndOfSupportCopyWith<_EndOfSupport> get copyWith =>
      __$EndOfSupportCopyWithImpl<_EndOfSupport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndOfSupportToJson(this);
  }
}

abstract class _EndOfSupport implements EndOfSupport {
  const factory _EndOfSupport(
      {required String title,
      required String body,
      required String url}) = _$_EndOfSupport;

  factory _EndOfSupport.fromJson(Map<String, dynamic> json) =
      _$_EndOfSupport.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EndOfSupportCopyWith<_EndOfSupport> get copyWith =>
      throw _privateConstructorUsedError;
}
