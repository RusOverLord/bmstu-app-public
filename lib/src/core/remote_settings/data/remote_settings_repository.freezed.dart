// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_settings_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteSettingsTearOff {
  const _$RemoteSettingsTearOff();

  _RemoteSettings call(
      {required bool showQrButtonOnMain,
      required String bmstuIdTitle,
      required String vkGroupUrl,
      required EndOfSupport endOfSupport}) {
    return _RemoteSettings(
      showQrButtonOnMain: showQrButtonOnMain,
      bmstuIdTitle: bmstuIdTitle,
      vkGroupUrl: vkGroupUrl,
      endOfSupport: endOfSupport,
    );
  }
}

/// @nodoc
const $RemoteSettings = _$RemoteSettingsTearOff();

/// @nodoc
mixin _$RemoteSettings {
  bool get showQrButtonOnMain => throw _privateConstructorUsedError;
  String get bmstuIdTitle => throw _privateConstructorUsedError;
  String get vkGroupUrl => throw _privateConstructorUsedError;
  EndOfSupport get endOfSupport => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoteSettingsCopyWith<RemoteSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteSettingsCopyWith<$Res> {
  factory $RemoteSettingsCopyWith(
          RemoteSettings value, $Res Function(RemoteSettings) then) =
      _$RemoteSettingsCopyWithImpl<$Res>;
  $Res call(
      {bool showQrButtonOnMain,
      String bmstuIdTitle,
      String vkGroupUrl,
      EndOfSupport endOfSupport});

  $EndOfSupportCopyWith<$Res> get endOfSupport;
}

/// @nodoc
class _$RemoteSettingsCopyWithImpl<$Res>
    implements $RemoteSettingsCopyWith<$Res> {
  _$RemoteSettingsCopyWithImpl(this._value, this._then);

  final RemoteSettings _value;
  // ignore: unused_field
  final $Res Function(RemoteSettings) _then;

  @override
  $Res call({
    Object? showQrButtonOnMain = freezed,
    Object? bmstuIdTitle = freezed,
    Object? vkGroupUrl = freezed,
    Object? endOfSupport = freezed,
  }) {
    return _then(_value.copyWith(
      showQrButtonOnMain: showQrButtonOnMain == freezed
          ? _value.showQrButtonOnMain
          : showQrButtonOnMain // ignore: cast_nullable_to_non_nullable
              as bool,
      bmstuIdTitle: bmstuIdTitle == freezed
          ? _value.bmstuIdTitle
          : bmstuIdTitle // ignore: cast_nullable_to_non_nullable
              as String,
      vkGroupUrl: vkGroupUrl == freezed
          ? _value.vkGroupUrl
          : vkGroupUrl // ignore: cast_nullable_to_non_nullable
              as String,
      endOfSupport: endOfSupport == freezed
          ? _value.endOfSupport
          : endOfSupport // ignore: cast_nullable_to_non_nullable
              as EndOfSupport,
    ));
  }

  @override
  $EndOfSupportCopyWith<$Res> get endOfSupport {
    return $EndOfSupportCopyWith<$Res>(_value.endOfSupport, (value) {
      return _then(_value.copyWith(endOfSupport: value));
    });
  }
}

/// @nodoc
abstract class _$RemoteSettingsCopyWith<$Res>
    implements $RemoteSettingsCopyWith<$Res> {
  factory _$RemoteSettingsCopyWith(
          _RemoteSettings value, $Res Function(_RemoteSettings) then) =
      __$RemoteSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showQrButtonOnMain,
      String bmstuIdTitle,
      String vkGroupUrl,
      EndOfSupport endOfSupport});

  @override
  $EndOfSupportCopyWith<$Res> get endOfSupport;
}

/// @nodoc
class __$RemoteSettingsCopyWithImpl<$Res>
    extends _$RemoteSettingsCopyWithImpl<$Res>
    implements _$RemoteSettingsCopyWith<$Res> {
  __$RemoteSettingsCopyWithImpl(
      _RemoteSettings _value, $Res Function(_RemoteSettings) _then)
      : super(_value, (v) => _then(v as _RemoteSettings));

  @override
  _RemoteSettings get _value => super._value as _RemoteSettings;

  @override
  $Res call({
    Object? showQrButtonOnMain = freezed,
    Object? bmstuIdTitle = freezed,
    Object? vkGroupUrl = freezed,
    Object? endOfSupport = freezed,
  }) {
    return _then(_RemoteSettings(
      showQrButtonOnMain: showQrButtonOnMain == freezed
          ? _value.showQrButtonOnMain
          : showQrButtonOnMain // ignore: cast_nullable_to_non_nullable
              as bool,
      bmstuIdTitle: bmstuIdTitle == freezed
          ? _value.bmstuIdTitle
          : bmstuIdTitle // ignore: cast_nullable_to_non_nullable
              as String,
      vkGroupUrl: vkGroupUrl == freezed
          ? _value.vkGroupUrl
          : vkGroupUrl // ignore: cast_nullable_to_non_nullable
              as String,
      endOfSupport: endOfSupport == freezed
          ? _value.endOfSupport
          : endOfSupport // ignore: cast_nullable_to_non_nullable
              as EndOfSupport,
    ));
  }
}

/// @nodoc

class _$_RemoteSettings extends _RemoteSettings {
  const _$_RemoteSettings(
      {required this.showQrButtonOnMain,
      required this.bmstuIdTitle,
      required this.vkGroupUrl,
      required this.endOfSupport})
      : super._();

  @override
  final bool showQrButtonOnMain;
  @override
  final String bmstuIdTitle;
  @override
  final String vkGroupUrl;
  @override
  final EndOfSupport endOfSupport;

  @override
  String toString() {
    return 'RemoteSettings(showQrButtonOnMain: $showQrButtonOnMain, bmstuIdTitle: $bmstuIdTitle, vkGroupUrl: $vkGroupUrl, endOfSupport: $endOfSupport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoteSettings &&
            (identical(other.showQrButtonOnMain, showQrButtonOnMain) ||
                const DeepCollectionEquality()
                    .equals(other.showQrButtonOnMain, showQrButtonOnMain)) &&
            (identical(other.bmstuIdTitle, bmstuIdTitle) ||
                const DeepCollectionEquality()
                    .equals(other.bmstuIdTitle, bmstuIdTitle)) &&
            (identical(other.vkGroupUrl, vkGroupUrl) ||
                const DeepCollectionEquality()
                    .equals(other.vkGroupUrl, vkGroupUrl)) &&
            (identical(other.endOfSupport, endOfSupport) ||
                const DeepCollectionEquality()
                    .equals(other.endOfSupport, endOfSupport)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showQrButtonOnMain) ^
      const DeepCollectionEquality().hash(bmstuIdTitle) ^
      const DeepCollectionEquality().hash(vkGroupUrl) ^
      const DeepCollectionEquality().hash(endOfSupport);

  @JsonKey(ignore: true)
  @override
  _$RemoteSettingsCopyWith<_RemoteSettings> get copyWith =>
      __$RemoteSettingsCopyWithImpl<_RemoteSettings>(this, _$identity);
}

abstract class _RemoteSettings extends RemoteSettings {
  const factory _RemoteSettings(
      {required bool showQrButtonOnMain,
      required String bmstuIdTitle,
      required String vkGroupUrl,
      required EndOfSupport endOfSupport}) = _$_RemoteSettings;
  const _RemoteSettings._() : super._();

  @override
  bool get showQrButtonOnMain => throw _privateConstructorUsedError;
  @override
  String get bmstuIdTitle => throw _privateConstructorUsedError;
  @override
  String get vkGroupUrl => throw _privateConstructorUsedError;
  @override
  EndOfSupport get endOfSupport => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RemoteSettingsCopyWith<_RemoteSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
