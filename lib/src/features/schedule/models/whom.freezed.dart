// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'whom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WhomTearOff {
  const _$WhomTearOff();

  Group group(
      {required String uuid,
      required String lessonUuid,
      required String name,
      String customName = ''}) {
    return Group(
      uuid: uuid,
      lessonUuid: lessonUuid,
      name: name,
      customName: customName,
    );
  }

  Teacher teacher(
      {required String uuid,
      required String lessonUuid,
      required String name,
      String customName = ''}) {
    return Teacher(
      uuid: uuid,
      lessonUuid: lessonUuid,
      name: name,
      customName: customName,
    );
  }
}

/// @nodoc
const $Whom = _$WhomTearOff();

/// @nodoc
mixin _$Whom {
  String get uuid => throw _privateConstructorUsedError;
  String get lessonUuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get customName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uuid, String lessonUuid, String name, String customName)
        group,
    required TResult Function(
            String uuid, String lessonUuid, String name, String customName)
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        group,
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        group,
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Group value) group,
    required TResult Function(Teacher value) teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Teacher value)? teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Teacher value)? teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WhomCopyWith<Whom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhomCopyWith<$Res> {
  factory $WhomCopyWith(Whom value, $Res Function(Whom) then) =
      _$WhomCopyWithImpl<$Res>;
  $Res call({String uuid, String lessonUuid, String name, String customName});
}

/// @nodoc
class _$WhomCopyWithImpl<$Res> implements $WhomCopyWith<$Res> {
  _$WhomCopyWithImpl(this._value, this._then);

  final Whom _value;
  // ignore: unused_field
  final $Res Function(Whom) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? lessonUuid = freezed,
    Object? name = freezed,
    Object? customName = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      lessonUuid: lessonUuid == freezed
          ? _value.lessonUuid
          : lessonUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      customName: customName == freezed
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GroupCopyWith<$Res> implements $WhomCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String lessonUuid, String name, String customName});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> extends _$WhomCopyWithImpl<$Res>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(Group _value, $Res Function(Group) _then)
      : super(_value, (v) => _then(v as Group));

  @override
  Group get _value => super._value as Group;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? lessonUuid = freezed,
    Object? name = freezed,
    Object? customName = freezed,
  }) {
    return _then(Group(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      lessonUuid: lessonUuid == freezed
          ? _value.lessonUuid
          : lessonUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      customName: customName == freezed
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Group extends Group {
  const _$Group(
      {required this.uuid,
      required this.lessonUuid,
      required this.name,
      this.customName = ''})
      : super._();

  @override
  final String uuid;
  @override
  final String lessonUuid;
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String customName;

  @override
  String toString() {
    return 'Whom.group(uuid: $uuid, lessonUuid: $lessonUuid, name: $name, customName: $customName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Group &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.lessonUuid, lessonUuid) ||
                const DeepCollectionEquality()
                    .equals(other.lessonUuid, lessonUuid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.customName, customName) ||
                const DeepCollectionEquality()
                    .equals(other.customName, customName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(lessonUuid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(customName);

  @JsonKey(ignore: true)
  @override
  $GroupCopyWith<Group> get copyWith =>
      _$GroupCopyWithImpl<Group>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uuid, String lessonUuid, String name, String customName)
        group,
    required TResult Function(
            String uuid, String lessonUuid, String name, String customName)
        teacher,
  }) {
    return group(uuid, lessonUuid, name, customName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        group,
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        teacher,
  }) {
    return group?.call(uuid, lessonUuid, name, customName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        group,
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(uuid, lessonUuid, name, customName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Group value) group,
    required TResult Function(Teacher value) teacher,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Teacher value)? teacher,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Teacher value)? teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class Group extends Whom {
  const factory Group(
      {required String uuid,
      required String lessonUuid,
      required String name,
      String customName}) = _$Group;
  const Group._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get lessonUuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get customName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> implements $WhomCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, String lessonUuid, String name, String customName});
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res> extends _$WhomCopyWithImpl<$Res>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(Teacher _value, $Res Function(Teacher) _then)
      : super(_value, (v) => _then(v as Teacher));

  @override
  Teacher get _value => super._value as Teacher;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? lessonUuid = freezed,
    Object? name = freezed,
    Object? customName = freezed,
  }) {
    return _then(Teacher(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      lessonUuid: lessonUuid == freezed
          ? _value.lessonUuid
          : lessonUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      customName: customName == freezed
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Teacher extends Teacher {
  const _$Teacher(
      {required this.uuid,
      required this.lessonUuid,
      required this.name,
      this.customName = ''})
      : super._();

  @override
  final String uuid;
  @override
  final String lessonUuid;
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String customName;

  @override
  String toString() {
    return 'Whom.teacher(uuid: $uuid, lessonUuid: $lessonUuid, name: $name, customName: $customName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Teacher &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.lessonUuid, lessonUuid) ||
                const DeepCollectionEquality()
                    .equals(other.lessonUuid, lessonUuid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.customName, customName) ||
                const DeepCollectionEquality()
                    .equals(other.customName, customName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(lessonUuid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(customName);

  @JsonKey(ignore: true)
  @override
  $TeacherCopyWith<Teacher> get copyWith =>
      _$TeacherCopyWithImpl<Teacher>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String uuid, String lessonUuid, String name, String customName)
        group,
    required TResult Function(
            String uuid, String lessonUuid, String name, String customName)
        teacher,
  }) {
    return teacher(uuid, lessonUuid, name, customName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        group,
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        teacher,
  }) {
    return teacher?.call(uuid, lessonUuid, name, customName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        group,
    TResult Function(
            String uuid, String lessonUuid, String name, String customName)?
        teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(uuid, lessonUuid, name, customName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Group value) group,
    required TResult Function(Teacher value) teacher,
  }) {
    return teacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Teacher value)? teacher,
  }) {
    return teacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Teacher value)? teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(this);
    }
    return orElse();
  }
}

abstract class Teacher extends Whom {
  const factory Teacher(
      {required String uuid,
      required String lessonUuid,
      required String name,
      String customName}) = _$Teacher;
  const Teacher._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get lessonUuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get customName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}
