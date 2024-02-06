// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'decomposed_schedule_sql.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DecomposedScheduleSqlTearOff {
  const _$DecomposedScheduleSqlTearOff();

  DecomposedScheduleSqlGroup group(
      {required ScheduleSql schedule,
      required GroupSql group,
      required Iterable<LessonSql> lessons,
      required WhomSqlCollection lessonsWhom}) {
    return DecomposedScheduleSqlGroup(
      schedule: schedule,
      group: group,
      lessons: lessons,
      lessonsWhom: lessonsWhom,
    );
  }

  DecomposedScheduleSqlTeacher teacher(
      {required ScheduleSql schedule,
      required TeacherSql teacher,
      required Iterable<LessonSql> lessons,
      required WhomSqlCollection lessonsWhom}) {
    return DecomposedScheduleSqlTeacher(
      schedule: schedule,
      teacher: teacher,
      lessons: lessons,
      lessonsWhom: lessonsWhom,
    );
  }
}

/// @nodoc
const $DecomposedScheduleSql = _$DecomposedScheduleSqlTearOff();

/// @nodoc
mixin _$DecomposedScheduleSql {
  ScheduleSql get schedule => throw _privateConstructorUsedError;
  Iterable<LessonSql> get lessons => throw _privateConstructorUsedError;
  WhomSqlCollection get lessonsWhom => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)
        group,
    required TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecomposedScheduleSqlGroup value) group,
    required TResult Function(DecomposedScheduleSqlTeacher value) teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DecomposedScheduleSqlGroup value)? group,
    TResult Function(DecomposedScheduleSqlTeacher value)? teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecomposedScheduleSqlGroup value)? group,
    TResult Function(DecomposedScheduleSqlTeacher value)? teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecomposedScheduleSqlCopyWith<DecomposedScheduleSql> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecomposedScheduleSqlCopyWith<$Res> {
  factory $DecomposedScheduleSqlCopyWith(DecomposedScheduleSql value,
          $Res Function(DecomposedScheduleSql) then) =
      _$DecomposedScheduleSqlCopyWithImpl<$Res>;
  $Res call(
      {ScheduleSql schedule,
      Iterable<LessonSql> lessons,
      WhomSqlCollection lessonsWhom});

  $WhomSqlCollectionCopyWith<$Res> get lessonsWhom;
}

/// @nodoc
class _$DecomposedScheduleSqlCopyWithImpl<$Res>
    implements $DecomposedScheduleSqlCopyWith<$Res> {
  _$DecomposedScheduleSqlCopyWithImpl(this._value, this._then);

  final DecomposedScheduleSql _value;
  // ignore: unused_field
  final $Res Function(DecomposedScheduleSql) _then;

  @override
  $Res call({
    Object? schedule = freezed,
    Object? lessons = freezed,
    Object? lessonsWhom = freezed,
  }) {
    return _then(_value.copyWith(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleSql,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as Iterable<LessonSql>,
      lessonsWhom: lessonsWhom == freezed
          ? _value.lessonsWhom
          : lessonsWhom // ignore: cast_nullable_to_non_nullable
              as WhomSqlCollection,
    ));
  }

  @override
  $WhomSqlCollectionCopyWith<$Res> get lessonsWhom {
    return $WhomSqlCollectionCopyWith<$Res>(_value.lessonsWhom, (value) {
      return _then(_value.copyWith(lessonsWhom: value));
    });
  }
}

/// @nodoc
abstract class $DecomposedScheduleSqlGroupCopyWith<$Res>
    implements $DecomposedScheduleSqlCopyWith<$Res> {
  factory $DecomposedScheduleSqlGroupCopyWith(DecomposedScheduleSqlGroup value,
          $Res Function(DecomposedScheduleSqlGroup) then) =
      _$DecomposedScheduleSqlGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {ScheduleSql schedule,
      GroupSql group,
      Iterable<LessonSql> lessons,
      WhomSqlCollection lessonsWhom});

  @override
  $WhomSqlCollectionCopyWith<$Res> get lessonsWhom;
}

/// @nodoc
class _$DecomposedScheduleSqlGroupCopyWithImpl<$Res>
    extends _$DecomposedScheduleSqlCopyWithImpl<$Res>
    implements $DecomposedScheduleSqlGroupCopyWith<$Res> {
  _$DecomposedScheduleSqlGroupCopyWithImpl(DecomposedScheduleSqlGroup _value,
      $Res Function(DecomposedScheduleSqlGroup) _then)
      : super(_value, (v) => _then(v as DecomposedScheduleSqlGroup));

  @override
  DecomposedScheduleSqlGroup get _value =>
      super._value as DecomposedScheduleSqlGroup;

  @override
  $Res call({
    Object? schedule = freezed,
    Object? group = freezed,
    Object? lessons = freezed,
    Object? lessonsWhom = freezed,
  }) {
    return _then(DecomposedScheduleSqlGroup(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleSql,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupSql,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as Iterable<LessonSql>,
      lessonsWhom: lessonsWhom == freezed
          ? _value.lessonsWhom
          : lessonsWhom // ignore: cast_nullable_to_non_nullable
              as WhomSqlCollection,
    ));
  }
}

/// @nodoc

class _$DecomposedScheduleSqlGroup extends DecomposedScheduleSqlGroup {
  const _$DecomposedScheduleSqlGroup(
      {required this.schedule,
      required this.group,
      required this.lessons,
      required this.lessonsWhom})
      : super._();

  @override
  final ScheduleSql schedule;
  @override
  final GroupSql group;
  @override
  final Iterable<LessonSql> lessons;
  @override
  final WhomSqlCollection lessonsWhom;

  @override
  String toString() {
    return 'DecomposedScheduleSql.group(schedule: $schedule, group: $group, lessons: $lessons, lessonsWhom: $lessonsWhom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DecomposedScheduleSqlGroup &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality()
                    .equals(other.lessons, lessons)) &&
            (identical(other.lessonsWhom, lessonsWhom) ||
                const DeepCollectionEquality()
                    .equals(other.lessonsWhom, lessonsWhom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(lessons) ^
      const DeepCollectionEquality().hash(lessonsWhom);

  @JsonKey(ignore: true)
  @override
  $DecomposedScheduleSqlGroupCopyWith<DecomposedScheduleSqlGroup>
      get copyWith =>
          _$DecomposedScheduleSqlGroupCopyWithImpl<DecomposedScheduleSqlGroup>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)
        group,
    required TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)
        teacher,
  }) {
    return group(schedule, this.group, lessons, lessonsWhom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        teacher,
  }) {
    return group?.call(schedule, this.group, lessons, lessonsWhom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(schedule, this.group, lessons, lessonsWhom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecomposedScheduleSqlGroup value) group,
    required TResult Function(DecomposedScheduleSqlTeacher value) teacher,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DecomposedScheduleSqlGroup value)? group,
    TResult Function(DecomposedScheduleSqlTeacher value)? teacher,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecomposedScheduleSqlGroup value)? group,
    TResult Function(DecomposedScheduleSqlTeacher value)? teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class DecomposedScheduleSqlGroup extends DecomposedScheduleSql {
  const factory DecomposedScheduleSqlGroup(
      {required ScheduleSql schedule,
      required GroupSql group,
      required Iterable<LessonSql> lessons,
      required WhomSqlCollection lessonsWhom}) = _$DecomposedScheduleSqlGroup;
  const DecomposedScheduleSqlGroup._() : super._();

  @override
  ScheduleSql get schedule => throw _privateConstructorUsedError;
  GroupSql get group => throw _privateConstructorUsedError;
  @override
  Iterable<LessonSql> get lessons => throw _privateConstructorUsedError;
  @override
  WhomSqlCollection get lessonsWhom => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DecomposedScheduleSqlGroupCopyWith<DecomposedScheduleSqlGroup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecomposedScheduleSqlTeacherCopyWith<$Res>
    implements $DecomposedScheduleSqlCopyWith<$Res> {
  factory $DecomposedScheduleSqlTeacherCopyWith(
          DecomposedScheduleSqlTeacher value,
          $Res Function(DecomposedScheduleSqlTeacher) then) =
      _$DecomposedScheduleSqlTeacherCopyWithImpl<$Res>;
  @override
  $Res call(
      {ScheduleSql schedule,
      TeacherSql teacher,
      Iterable<LessonSql> lessons,
      WhomSqlCollection lessonsWhom});

  @override
  $WhomSqlCollectionCopyWith<$Res> get lessonsWhom;
}

/// @nodoc
class _$DecomposedScheduleSqlTeacherCopyWithImpl<$Res>
    extends _$DecomposedScheduleSqlCopyWithImpl<$Res>
    implements $DecomposedScheduleSqlTeacherCopyWith<$Res> {
  _$DecomposedScheduleSqlTeacherCopyWithImpl(
      DecomposedScheduleSqlTeacher _value,
      $Res Function(DecomposedScheduleSqlTeacher) _then)
      : super(_value, (v) => _then(v as DecomposedScheduleSqlTeacher));

  @override
  DecomposedScheduleSqlTeacher get _value =>
      super._value as DecomposedScheduleSqlTeacher;

  @override
  $Res call({
    Object? schedule = freezed,
    Object? teacher = freezed,
    Object? lessons = freezed,
    Object? lessonsWhom = freezed,
  }) {
    return _then(DecomposedScheduleSqlTeacher(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleSql,
      teacher: teacher == freezed
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherSql,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as Iterable<LessonSql>,
      lessonsWhom: lessonsWhom == freezed
          ? _value.lessonsWhom
          : lessonsWhom // ignore: cast_nullable_to_non_nullable
              as WhomSqlCollection,
    ));
  }
}

/// @nodoc

class _$DecomposedScheduleSqlTeacher extends DecomposedScheduleSqlTeacher {
  const _$DecomposedScheduleSqlTeacher(
      {required this.schedule,
      required this.teacher,
      required this.lessons,
      required this.lessonsWhom})
      : super._();

  @override
  final ScheduleSql schedule;
  @override
  final TeacherSql teacher;
  @override
  final Iterable<LessonSql> lessons;
  @override
  final WhomSqlCollection lessonsWhom;

  @override
  String toString() {
    return 'DecomposedScheduleSql.teacher(schedule: $schedule, teacher: $teacher, lessons: $lessons, lessonsWhom: $lessonsWhom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DecomposedScheduleSqlTeacher &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality()
                    .equals(other.teacher, teacher)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality()
                    .equals(other.lessons, lessons)) &&
            (identical(other.lessonsWhom, lessonsWhom) ||
                const DeepCollectionEquality()
                    .equals(other.lessonsWhom, lessonsWhom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(teacher) ^
      const DeepCollectionEquality().hash(lessons) ^
      const DeepCollectionEquality().hash(lessonsWhom);

  @JsonKey(ignore: true)
  @override
  $DecomposedScheduleSqlTeacherCopyWith<DecomposedScheduleSqlTeacher>
      get copyWith => _$DecomposedScheduleSqlTeacherCopyWithImpl<
          DecomposedScheduleSqlTeacher>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)
        group,
    required TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)
        teacher,
  }) {
    return teacher(schedule, this.teacher, lessons, lessonsWhom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        teacher,
  }) {
    return teacher?.call(schedule, this.teacher, lessons, lessonsWhom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSql> lessons, WhomSqlCollection lessonsWhom)?
        teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(schedule, this.teacher, lessons, lessonsWhom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecomposedScheduleSqlGroup value) group,
    required TResult Function(DecomposedScheduleSqlTeacher value) teacher,
  }) {
    return teacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DecomposedScheduleSqlGroup value)? group,
    TResult Function(DecomposedScheduleSqlTeacher value)? teacher,
  }) {
    return teacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecomposedScheduleSqlGroup value)? group,
    TResult Function(DecomposedScheduleSqlTeacher value)? teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(this);
    }
    return orElse();
  }
}

abstract class DecomposedScheduleSqlTeacher extends DecomposedScheduleSql {
  const factory DecomposedScheduleSqlTeacher(
      {required ScheduleSql schedule,
      required TeacherSql teacher,
      required Iterable<LessonSql> lessons,
      required WhomSqlCollection lessonsWhom}) = _$DecomposedScheduleSqlTeacher;
  const DecomposedScheduleSqlTeacher._() : super._();

  @override
  ScheduleSql get schedule => throw _privateConstructorUsedError;
  TeacherSql get teacher => throw _privateConstructorUsedError;
  @override
  Iterable<LessonSql> get lessons => throw _privateConstructorUsedError;
  @override
  WhomSqlCollection get lessonsWhom => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DecomposedScheduleSqlTeacherCopyWith<DecomposedScheduleSqlTeacher>
      get copyWith => throw _privateConstructorUsedError;
}
