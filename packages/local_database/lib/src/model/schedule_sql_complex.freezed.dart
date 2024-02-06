// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_sql_complex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleSqlComplexTearOff {
  const _$ScheduleSqlComplexTearOff();

  ScheduleSqlComplexGroup group(
      {required ScheduleSql schedule,
      required GroupSql group,
      required Iterable<LessonSqlComplexGroup> lessons}) {
    return ScheduleSqlComplexGroup(
      schedule: schedule,
      group: group,
      lessons: lessons,
    );
  }

  ScheduleSqlComplexTeacher teacher(
      {required ScheduleSql schedule,
      required TeacherSql teacher,
      required Iterable<LessonSqlComplexTeacher> lessons}) {
    return ScheduleSqlComplexTeacher(
      schedule: schedule,
      teacher: teacher,
      lessons: lessons,
    );
  }
}

/// @nodoc
const $ScheduleSqlComplex = _$ScheduleSqlComplexTearOff();

/// @nodoc
mixin _$ScheduleSqlComplex {
  ScheduleSql get schedule => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)
        group,
    required TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)?
        teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)?
        teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleSqlComplexGroup value) group,
    required TResult Function(ScheduleSqlComplexTeacher value) teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleSqlComplexGroup value)? group,
    TResult Function(ScheduleSqlComplexTeacher value)? teacher,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleSqlComplexGroup value)? group,
    TResult Function(ScheduleSqlComplexTeacher value)? teacher,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleSqlComplexCopyWith<ScheduleSqlComplex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSqlComplexCopyWith<$Res> {
  factory $ScheduleSqlComplexCopyWith(
          ScheduleSqlComplex value, $Res Function(ScheduleSqlComplex) then) =
      _$ScheduleSqlComplexCopyWithImpl<$Res>;
  $Res call({ScheduleSql schedule});
}

/// @nodoc
class _$ScheduleSqlComplexCopyWithImpl<$Res>
    implements $ScheduleSqlComplexCopyWith<$Res> {
  _$ScheduleSqlComplexCopyWithImpl(this._value, this._then);

  final ScheduleSqlComplex _value;
  // ignore: unused_field
  final $Res Function(ScheduleSqlComplex) _then;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleSql,
    ));
  }
}

/// @nodoc
abstract class $ScheduleSqlComplexGroupCopyWith<$Res>
    implements $ScheduleSqlComplexCopyWith<$Res> {
  factory $ScheduleSqlComplexGroupCopyWith(ScheduleSqlComplexGroup value,
          $Res Function(ScheduleSqlComplexGroup) then) =
      _$ScheduleSqlComplexGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {ScheduleSql schedule,
      GroupSql group,
      Iterable<LessonSqlComplexGroup> lessons});
}

/// @nodoc
class _$ScheduleSqlComplexGroupCopyWithImpl<$Res>
    extends _$ScheduleSqlComplexCopyWithImpl<$Res>
    implements $ScheduleSqlComplexGroupCopyWith<$Res> {
  _$ScheduleSqlComplexGroupCopyWithImpl(ScheduleSqlComplexGroup _value,
      $Res Function(ScheduleSqlComplexGroup) _then)
      : super(_value, (v) => _then(v as ScheduleSqlComplexGroup));

  @override
  ScheduleSqlComplexGroup get _value => super._value as ScheduleSqlComplexGroup;

  @override
  $Res call({
    Object? schedule = freezed,
    Object? group = freezed,
    Object? lessons = freezed,
  }) {
    return _then(ScheduleSqlComplexGroup(
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
              as Iterable<LessonSqlComplexGroup>,
    ));
  }
}

/// @nodoc

class _$ScheduleSqlComplexGroup extends ScheduleSqlComplexGroup {
  const _$ScheduleSqlComplexGroup(
      {required this.schedule, required this.group, required this.lessons})
      : super._();

  @override
  final ScheduleSql schedule;
  @override
  final GroupSql group;
  @override
  final Iterable<LessonSqlComplexGroup> lessons;

  @override
  String toString() {
    return 'ScheduleSqlComplex.group(schedule: $schedule, group: $group, lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleSqlComplexGroup &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality().equals(other.lessons, lessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(lessons);

  @JsonKey(ignore: true)
  @override
  $ScheduleSqlComplexGroupCopyWith<ScheduleSqlComplexGroup> get copyWith =>
      _$ScheduleSqlComplexGroupCopyWithImpl<ScheduleSqlComplexGroup>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)
        group,
    required TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)
        teacher,
  }) {
    return group(schedule, this.group, lessons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)?
        teacher,
  }) {
    return group?.call(schedule, this.group, lessons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)?
        teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(schedule, this.group, lessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleSqlComplexGroup value) group,
    required TResult Function(ScheduleSqlComplexTeacher value) teacher,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleSqlComplexGroup value)? group,
    TResult Function(ScheduleSqlComplexTeacher value)? teacher,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleSqlComplexGroup value)? group,
    TResult Function(ScheduleSqlComplexTeacher value)? teacher,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class ScheduleSqlComplexGroup extends ScheduleSqlComplex {
  const factory ScheduleSqlComplexGroup(
          {required ScheduleSql schedule,
          required GroupSql group,
          required Iterable<LessonSqlComplexGroup> lessons}) =
      _$ScheduleSqlComplexGroup;
  const ScheduleSqlComplexGroup._() : super._();

  @override
  ScheduleSql get schedule => throw _privateConstructorUsedError;
  GroupSql get group => throw _privateConstructorUsedError;
  Iterable<LessonSqlComplexGroup> get lessons =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ScheduleSqlComplexGroupCopyWith<ScheduleSqlComplexGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleSqlComplexTeacherCopyWith<$Res>
    implements $ScheduleSqlComplexCopyWith<$Res> {
  factory $ScheduleSqlComplexTeacherCopyWith(ScheduleSqlComplexTeacher value,
          $Res Function(ScheduleSqlComplexTeacher) then) =
      _$ScheduleSqlComplexTeacherCopyWithImpl<$Res>;
  @override
  $Res call(
      {ScheduleSql schedule,
      TeacherSql teacher,
      Iterable<LessonSqlComplexTeacher> lessons});
}

/// @nodoc
class _$ScheduleSqlComplexTeacherCopyWithImpl<$Res>
    extends _$ScheduleSqlComplexCopyWithImpl<$Res>
    implements $ScheduleSqlComplexTeacherCopyWith<$Res> {
  _$ScheduleSqlComplexTeacherCopyWithImpl(ScheduleSqlComplexTeacher _value,
      $Res Function(ScheduleSqlComplexTeacher) _then)
      : super(_value, (v) => _then(v as ScheduleSqlComplexTeacher));

  @override
  ScheduleSqlComplexTeacher get _value =>
      super._value as ScheduleSqlComplexTeacher;

  @override
  $Res call({
    Object? schedule = freezed,
    Object? teacher = freezed,
    Object? lessons = freezed,
  }) {
    return _then(ScheduleSqlComplexTeacher(
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
              as Iterable<LessonSqlComplexTeacher>,
    ));
  }
}

/// @nodoc

class _$ScheduleSqlComplexTeacher extends ScheduleSqlComplexTeacher {
  const _$ScheduleSqlComplexTeacher(
      {required this.schedule, required this.teacher, required this.lessons})
      : super._();

  @override
  final ScheduleSql schedule;
  @override
  final TeacherSql teacher;
  @override
  final Iterable<LessonSqlComplexTeacher> lessons;

  @override
  String toString() {
    return 'ScheduleSqlComplex.teacher(schedule: $schedule, teacher: $teacher, lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduleSqlComplexTeacher &&
            (identical(other.schedule, schedule) ||
                const DeepCollectionEquality()
                    .equals(other.schedule, schedule)) &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality()
                    .equals(other.teacher, teacher)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality().equals(other.lessons, lessons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(schedule) ^
      const DeepCollectionEquality().hash(teacher) ^
      const DeepCollectionEquality().hash(lessons);

  @JsonKey(ignore: true)
  @override
  $ScheduleSqlComplexTeacherCopyWith<ScheduleSqlComplexTeacher> get copyWith =>
      _$ScheduleSqlComplexTeacherCopyWithImpl<ScheduleSqlComplexTeacher>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)
        group,
    required TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)
        teacher,
  }) {
    return teacher(schedule, this.teacher, lessons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)?
        teacher,
  }) {
    return teacher?.call(schedule, this.teacher, lessons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ScheduleSql schedule, GroupSql group,
            Iterable<LessonSqlComplexGroup> lessons)?
        group,
    TResult Function(ScheduleSql schedule, TeacherSql teacher,
            Iterable<LessonSqlComplexTeacher> lessons)?
        teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(schedule, this.teacher, lessons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScheduleSqlComplexGroup value) group,
    required TResult Function(ScheduleSqlComplexTeacher value) teacher,
  }) {
    return teacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ScheduleSqlComplexGroup value)? group,
    TResult Function(ScheduleSqlComplexTeacher value)? teacher,
  }) {
    return teacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScheduleSqlComplexGroup value)? group,
    TResult Function(ScheduleSqlComplexTeacher value)? teacher,
    required TResult orElse(),
  }) {
    if (teacher != null) {
      return teacher(this);
    }
    return orElse();
  }
}

abstract class ScheduleSqlComplexTeacher extends ScheduleSqlComplex {
  const factory ScheduleSqlComplexTeacher(
          {required ScheduleSql schedule,
          required TeacherSql teacher,
          required Iterable<LessonSqlComplexTeacher> lessons}) =
      _$ScheduleSqlComplexTeacher;
  const ScheduleSqlComplexTeacher._() : super._();

  @override
  ScheduleSql get schedule => throw _privateConstructorUsedError;
  TeacherSql get teacher => throw _privateConstructorUsedError;
  Iterable<LessonSqlComplexTeacher> get lessons =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ScheduleSqlComplexTeacherCopyWith<ScheduleSqlComplexTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}
