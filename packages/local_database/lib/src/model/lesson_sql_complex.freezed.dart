// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_sql_complex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LessonSqlComplexTearOff {
  const _$LessonSqlComplexTearOff();

  LessonSqlComplexGroup group(
      {required LessonSql lesson, required Iterable<TeacherSql> teachers}) {
    return LessonSqlComplexGroup(
      lesson: lesson,
      teachers: teachers,
    );
  }

  LessonSqlComplexTeacher teacher(
      {required LessonSql lesson, required Iterable<GroupSql> groups}) {
    return LessonSqlComplexTeacher(
      lesson: lesson,
      groups: groups,
    );
  }
}

/// @nodoc
const $LessonSqlComplex = _$LessonSqlComplexTearOff();

/// @nodoc
mixin _$LessonSqlComplex {
  LessonSql get lesson => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)
        group,
    required TResult Function(LessonSql lesson, Iterable<GroupSql> groups)
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)? group,
    TResult Function(LessonSql lesson, Iterable<GroupSql> groups)? teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)? group,
    TResult Function(LessonSql lesson, Iterable<GroupSql> groups)? teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonSqlComplexGroup value) group,
    required TResult Function(LessonSqlComplexTeacher value) teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonSqlComplexGroup value)? group,
    TResult Function(LessonSqlComplexTeacher value)? teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonSqlComplexGroup value)? group,
    TResult Function(LessonSqlComplexTeacher value)? teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonSqlComplexCopyWith<LessonSqlComplex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonSqlComplexCopyWith<$Res> {
  factory $LessonSqlComplexCopyWith(
          LessonSqlComplex value, $Res Function(LessonSqlComplex) then) =
      _$LessonSqlComplexCopyWithImpl<$Res>;
  $Res call({LessonSql lesson});
}

/// @nodoc
class _$LessonSqlComplexCopyWithImpl<$Res>
    implements $LessonSqlComplexCopyWith<$Res> {
  _$LessonSqlComplexCopyWithImpl(this._value, this._then);

  final LessonSqlComplex _value;
  // ignore: unused_field
  final $Res Function(LessonSqlComplex) _then;

  @override
  $Res call({
    Object? lesson = freezed,
  }) {
    return _then(_value.copyWith(
      lesson: lesson == freezed
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as LessonSql,
    ));
  }
}

/// @nodoc
abstract class $LessonSqlComplexGroupCopyWith<$Res>
    implements $LessonSqlComplexCopyWith<$Res> {
  factory $LessonSqlComplexGroupCopyWith(LessonSqlComplexGroup value,
          $Res Function(LessonSqlComplexGroup) then) =
      _$LessonSqlComplexGroupCopyWithImpl<$Res>;
  @override
  $Res call({LessonSql lesson, Iterable<TeacherSql> teachers});
}

/// @nodoc
class _$LessonSqlComplexGroupCopyWithImpl<$Res>
    extends _$LessonSqlComplexCopyWithImpl<$Res>
    implements $LessonSqlComplexGroupCopyWith<$Res> {
  _$LessonSqlComplexGroupCopyWithImpl(
      LessonSqlComplexGroup _value, $Res Function(LessonSqlComplexGroup) _then)
      : super(_value, (v) => _then(v as LessonSqlComplexGroup));

  @override
  LessonSqlComplexGroup get _value => super._value as LessonSqlComplexGroup;

  @override
  $Res call({
    Object? lesson = freezed,
    Object? teachers = freezed,
  }) {
    return _then(LessonSqlComplexGroup(
      lesson: lesson == freezed
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as LessonSql,
      teachers: teachers == freezed
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as Iterable<TeacherSql>,
    ));
  }
}

/// @nodoc

class _$LessonSqlComplexGroup extends LessonSqlComplexGroup {
  const _$LessonSqlComplexGroup({required this.lesson, required this.teachers})
      : super._();

  @override
  final LessonSql lesson;
  @override
  final Iterable<TeacherSql> teachers;

  @override
  String toString() {
    return 'LessonSqlComplex.group(lesson: $lesson, teachers: $teachers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonSqlComplexGroup &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lesson) ^
      const DeepCollectionEquality().hash(teachers);

  @JsonKey(ignore: true)
  @override
  $LessonSqlComplexGroupCopyWith<LessonSqlComplexGroup> get copyWith =>
      _$LessonSqlComplexGroupCopyWithImpl<LessonSqlComplexGroup>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)
        group,
    required TResult Function(LessonSql lesson, Iterable<GroupSql> groups)
        teacher,
  }) {
    return group(lesson, teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)? group,
    TResult Function(LessonSql lesson, Iterable<GroupSql> groups)? teacher,
  }) {
    return group?.call(lesson, teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)? group,
    TResult Function(LessonSql lesson, Iterable<GroupSql> groups)? teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(lesson, teachers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonSqlComplexGroup value) group,
    required TResult Function(LessonSqlComplexTeacher value) teacher,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonSqlComplexGroup value)? group,
    TResult Function(LessonSqlComplexTeacher value)? teacher,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonSqlComplexGroup value)? group,
    TResult Function(LessonSqlComplexTeacher value)? teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class LessonSqlComplexGroup extends LessonSqlComplex {
  const factory LessonSqlComplexGroup(
      {required LessonSql lesson,
      required Iterable<TeacherSql> teachers}) = _$LessonSqlComplexGroup;
  const LessonSqlComplexGroup._() : super._();

  @override
  LessonSql get lesson => throw _privateConstructorUsedError;
  Iterable<TeacherSql> get teachers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LessonSqlComplexGroupCopyWith<LessonSqlComplexGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonSqlComplexTeacherCopyWith<$Res>
    implements $LessonSqlComplexCopyWith<$Res> {
  factory $LessonSqlComplexTeacherCopyWith(LessonSqlComplexTeacher value,
          $Res Function(LessonSqlComplexTeacher) then) =
      _$LessonSqlComplexTeacherCopyWithImpl<$Res>;
  @override
  $Res call({LessonSql lesson, Iterable<GroupSql> groups});
}

/// @nodoc
class _$LessonSqlComplexTeacherCopyWithImpl<$Res>
    extends _$LessonSqlComplexCopyWithImpl<$Res>
    implements $LessonSqlComplexTeacherCopyWith<$Res> {
  _$LessonSqlComplexTeacherCopyWithImpl(LessonSqlComplexTeacher _value,
      $Res Function(LessonSqlComplexTeacher) _then)
      : super(_value, (v) => _then(v as LessonSqlComplexTeacher));

  @override
  LessonSqlComplexTeacher get _value => super._value as LessonSqlComplexTeacher;

  @override
  $Res call({
    Object? lesson = freezed,
    Object? groups = freezed,
  }) {
    return _then(LessonSqlComplexTeacher(
      lesson: lesson == freezed
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as LessonSql,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Iterable<GroupSql>,
    ));
  }
}

/// @nodoc

class _$LessonSqlComplexTeacher extends LessonSqlComplexTeacher {
  const _$LessonSqlComplexTeacher({required this.lesson, required this.groups})
      : super._();

  @override
  final LessonSql lesson;
  @override
  final Iterable<GroupSql> groups;

  @override
  String toString() {
    return 'LessonSqlComplex.teacher(lesson: $lesson, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LessonSqlComplexTeacher &&
            (identical(other.lesson, lesson) ||
                const DeepCollectionEquality().equals(other.lesson, lesson)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lesson) ^
      const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  $LessonSqlComplexTeacherCopyWith<LessonSqlComplexTeacher> get copyWith =>
      _$LessonSqlComplexTeacherCopyWithImpl<LessonSqlComplexTeacher>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)
        group,
    required TResult Function(LessonSql lesson, Iterable<GroupSql> groups)
        teacher,
  }) {
    return teacher(lesson, groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)? group,
    TResult Function(LessonSql lesson, Iterable<GroupSql> groups)? teacher,
  }) {
    return teacher?.call(lesson, groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LessonSql lesson, Iterable<TeacherSql> teachers)? group,
    TResult Function(LessonSql lesson, Iterable<GroupSql> groups)? teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(lesson, groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LessonSqlComplexGroup value) group,
    required TResult Function(LessonSqlComplexTeacher value) teacher,
  }) {
    return teacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LessonSqlComplexGroup value)? group,
    TResult Function(LessonSqlComplexTeacher value)? teacher,
  }) {
    return teacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LessonSqlComplexGroup value)? group,
    TResult Function(LessonSqlComplexTeacher value)? teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(this);
    }
    return orElse();
  }
}

abstract class LessonSqlComplexTeacher extends LessonSqlComplex {
  const factory LessonSqlComplexTeacher(
      {required LessonSql lesson,
      required Iterable<GroupSql> groups}) = _$LessonSqlComplexTeacher;
  const LessonSqlComplexTeacher._() : super._();

  @override
  LessonSql get lesson => throw _privateConstructorUsedError;
  Iterable<GroupSql> get groups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LessonSqlComplexTeacherCopyWith<LessonSqlComplexTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}
