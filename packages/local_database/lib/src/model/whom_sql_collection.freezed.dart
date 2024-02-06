// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'whom_sql_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WhomSqlCollectionTearOff {
  const _$WhomSqlCollectionTearOff();

  GroupSqlCollection groups(Iterable<GroupSql> groups) {
    return GroupSqlCollection(
      groups,
    );
  }

  TeacherSqlCollection teachers(Iterable<TeacherSql> teachers) {
    return TeacherSqlCollection(
      teachers,
    );
  }
}

/// @nodoc
const $WhomSqlCollection = _$WhomSqlCollectionTearOff();

/// @nodoc
mixin _$WhomSqlCollection {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<GroupSql> groups) groups,
    required TResult Function(Iterable<TeacherSql> teachers) teachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<GroupSql> groups)? groups,
    TResult Function(Iterable<TeacherSql> teachers)? teachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<GroupSql> groups)? groups,
    TResult Function(Iterable<TeacherSql> teachers)? teachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupSqlCollection value) groups,
    required TResult Function(TeacherSqlCollection value) teachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GroupSqlCollection value)? groups,
    TResult Function(TeacherSqlCollection value)? teachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupSqlCollection value)? groups,
    TResult Function(TeacherSqlCollection value)? teachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhomSqlCollectionCopyWith<$Res> {
  factory $WhomSqlCollectionCopyWith(
          WhomSqlCollection value, $Res Function(WhomSqlCollection) then) =
      _$WhomSqlCollectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$WhomSqlCollectionCopyWithImpl<$Res>
    implements $WhomSqlCollectionCopyWith<$Res> {
  _$WhomSqlCollectionCopyWithImpl(this._value, this._then);

  final WhomSqlCollection _value;
  // ignore: unused_field
  final $Res Function(WhomSqlCollection) _then;
}

/// @nodoc
abstract class $GroupSqlCollectionCopyWith<$Res> {
  factory $GroupSqlCollectionCopyWith(
          GroupSqlCollection value, $Res Function(GroupSqlCollection) then) =
      _$GroupSqlCollectionCopyWithImpl<$Res>;
  $Res call({Iterable<GroupSql> groups});
}

/// @nodoc
class _$GroupSqlCollectionCopyWithImpl<$Res>
    extends _$WhomSqlCollectionCopyWithImpl<$Res>
    implements $GroupSqlCollectionCopyWith<$Res> {
  _$GroupSqlCollectionCopyWithImpl(
      GroupSqlCollection _value, $Res Function(GroupSqlCollection) _then)
      : super(_value, (v) => _then(v as GroupSqlCollection));

  @override
  GroupSqlCollection get _value => super._value as GroupSqlCollection;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(GroupSqlCollection(
      groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Iterable<GroupSql>,
    ));
  }
}

/// @nodoc

class _$GroupSqlCollection extends GroupSqlCollection {
  const _$GroupSqlCollection(this.groups) : super._();

  @override
  final Iterable<GroupSql> groups;

  @override
  String toString() {
    return 'WhomSqlCollection.groups(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupSqlCollection &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  $GroupSqlCollectionCopyWith<GroupSqlCollection> get copyWith =>
      _$GroupSqlCollectionCopyWithImpl<GroupSqlCollection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<GroupSql> groups) groups,
    required TResult Function(Iterable<TeacherSql> teachers) teachers,
  }) {
    return groups(this.groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<GroupSql> groups)? groups,
    TResult Function(Iterable<TeacherSql> teachers)? teachers,
  }) {
    return groups?.call(this.groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<GroupSql> groups)? groups,
    TResult Function(Iterable<TeacherSql> teachers)? teachers,
    required TResult orElse(),
  }) {
    if (groups != null) {
      return groups(this.groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupSqlCollection value) groups,
    required TResult Function(TeacherSqlCollection value) teachers,
  }) {
    return groups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GroupSqlCollection value)? groups,
    TResult Function(TeacherSqlCollection value)? teachers,
  }) {
    return groups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupSqlCollection value)? groups,
    TResult Function(TeacherSqlCollection value)? teachers,
    required TResult orElse(),
  }) {
    if (groups != null) {
      return groups(this);
    }
    return orElse();
  }
}

abstract class GroupSqlCollection extends WhomSqlCollection {
  const factory GroupSqlCollection(Iterable<GroupSql> groups) =
      _$GroupSqlCollection;
  const GroupSqlCollection._() : super._();

  Iterable<GroupSql> get groups => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupSqlCollectionCopyWith<GroupSqlCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherSqlCollectionCopyWith<$Res> {
  factory $TeacherSqlCollectionCopyWith(TeacherSqlCollection value,
          $Res Function(TeacherSqlCollection) then) =
      _$TeacherSqlCollectionCopyWithImpl<$Res>;
  $Res call({Iterable<TeacherSql> teachers});
}

/// @nodoc
class _$TeacherSqlCollectionCopyWithImpl<$Res>
    extends _$WhomSqlCollectionCopyWithImpl<$Res>
    implements $TeacherSqlCollectionCopyWith<$Res> {
  _$TeacherSqlCollectionCopyWithImpl(
      TeacherSqlCollection _value, $Res Function(TeacherSqlCollection) _then)
      : super(_value, (v) => _then(v as TeacherSqlCollection));

  @override
  TeacherSqlCollection get _value => super._value as TeacherSqlCollection;

  @override
  $Res call({
    Object? teachers = freezed,
  }) {
    return _then(TeacherSqlCollection(
      teachers == freezed
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as Iterable<TeacherSql>,
    ));
  }
}

/// @nodoc

class _$TeacherSqlCollection extends TeacherSqlCollection {
  const _$TeacherSqlCollection(this.teachers) : super._();

  @override
  final Iterable<TeacherSql> teachers;

  @override
  String toString() {
    return 'WhomSqlCollection.teachers(teachers: $teachers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TeacherSqlCollection &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teachers);

  @JsonKey(ignore: true)
  @override
  $TeacherSqlCollectionCopyWith<TeacherSqlCollection> get copyWith =>
      _$TeacherSqlCollectionCopyWithImpl<TeacherSqlCollection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Iterable<GroupSql> groups) groups,
    required TResult Function(Iterable<TeacherSql> teachers) teachers,
  }) {
    return teachers(this.teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Iterable<GroupSql> groups)? groups,
    TResult Function(Iterable<TeacherSql> teachers)? teachers,
  }) {
    return teachers?.call(this.teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Iterable<GroupSql> groups)? groups,
    TResult Function(Iterable<TeacherSql> teachers)? teachers,
    required TResult orElse(),
  }) {
    if (teachers != null) {
      return teachers(this.teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupSqlCollection value) groups,
    required TResult Function(TeacherSqlCollection value) teachers,
  }) {
    return teachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GroupSqlCollection value)? groups,
    TResult Function(TeacherSqlCollection value)? teachers,
  }) {
    return teachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupSqlCollection value)? groups,
    TResult Function(TeacherSqlCollection value)? teachers,
    required TResult orElse(),
  }) {
    if (teachers != null) {
      return teachers(this);
    }
    return orElse();
  }
}

abstract class TeacherSqlCollection extends WhomSqlCollection {
  const factory TeacherSqlCollection(Iterable<TeacherSql> teachers) =
      _$TeacherSqlCollection;
  const TeacherSqlCollection._() : super._();

  Iterable<TeacherSql> get teachers => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherSqlCollectionCopyWith<TeacherSqlCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
