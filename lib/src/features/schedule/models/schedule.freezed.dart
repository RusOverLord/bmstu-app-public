// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleTearOff {
  const _$ScheduleTearOff();

  _Schedule call(
      {required String uuid,
      required Whom whom,
      required ScheduleLessonsCollection<Iterable<Lesson>> lessons,
      required bool isNumeratorFirst,
      required SemesterRange semesterRange,
      required String etag}) {
    return _Schedule(
      uuid: uuid,
      whom: whom,
      lessons: lessons,
      isNumeratorFirst: isNumeratorFirst,
      semesterRange: semesterRange,
      etag: etag,
    );
  }
}

/// @nodoc
const $Schedule = _$ScheduleTearOff();

/// @nodoc
mixin _$Schedule {
  String get uuid => throw _privateConstructorUsedError;
  Whom get whom => throw _privateConstructorUsedError;
  ScheduleLessonsCollection<Iterable<Lesson>> get lessons =>
      throw _privateConstructorUsedError;
  bool get isNumeratorFirst => throw _privateConstructorUsedError;
  SemesterRange get semesterRange => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      Whom whom,
      ScheduleLessonsCollection<Iterable<Lesson>> lessons,
      bool isNumeratorFirst,
      SemesterRange semesterRange,
      String etag});

  $WhomCopyWith<$Res> get whom;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res> implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  final Schedule _value;
  // ignore: unused_field
  final $Res Function(Schedule) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? whom = freezed,
    Object? lessons = freezed,
    Object? isNumeratorFirst = freezed,
    Object? semesterRange = freezed,
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      whom: whom == freezed
          ? _value.whom
          : whom // ignore: cast_nullable_to_non_nullable
              as Whom,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as ScheduleLessonsCollection<Iterable<Lesson>>,
      isNumeratorFirst: isNumeratorFirst == freezed
          ? _value.isNumeratorFirst
          : isNumeratorFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      semesterRange: semesterRange == freezed
          ? _value.semesterRange
          : semesterRange // ignore: cast_nullable_to_non_nullable
              as SemesterRange,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $WhomCopyWith<$Res> get whom {
    return $WhomCopyWith<$Res>(_value.whom, (value) {
      return _then(_value.copyWith(whom: value));
    });
  }
}

/// @nodoc
abstract class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) then) =
      __$ScheduleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      Whom whom,
      ScheduleLessonsCollection<Iterable<Lesson>> lessons,
      bool isNumeratorFirst,
      SemesterRange semesterRange,
      String etag});

  @override
  $WhomCopyWith<$Res> get whom;
}

/// @nodoc
class __$ScheduleCopyWithImpl<$Res> extends _$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(_Schedule _value, $Res Function(_Schedule) _then)
      : super(_value, (v) => _then(v as _Schedule));

  @override
  _Schedule get _value => super._value as _Schedule;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? whom = freezed,
    Object? lessons = freezed,
    Object? isNumeratorFirst = freezed,
    Object? semesterRange = freezed,
    Object? etag = freezed,
  }) {
    return _then(_Schedule(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      whom: whom == freezed
          ? _value.whom
          : whom // ignore: cast_nullable_to_non_nullable
              as Whom,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as ScheduleLessonsCollection<Iterable<Lesson>>,
      isNumeratorFirst: isNumeratorFirst == freezed
          ? _value.isNumeratorFirst
          : isNumeratorFirst // ignore: cast_nullable_to_non_nullable
              as bool,
      semesterRange: semesterRange == freezed
          ? _value.semesterRange
          : semesterRange // ignore: cast_nullable_to_non_nullable
              as SemesterRange,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Schedule extends _Schedule {
  const _$_Schedule(
      {required this.uuid,
      required this.whom,
      required this.lessons,
      required this.isNumeratorFirst,
      required this.semesterRange,
      required this.etag})
      : super._();

  @override
  final String uuid;
  @override
  final Whom whom;
  @override
  final ScheduleLessonsCollection<Iterable<Lesson>> lessons;
  @override
  final bool isNumeratorFirst;
  @override
  final SemesterRange semesterRange;
  @override
  final String etag;

  @override
  String toString() {
    return 'Schedule(uuid: $uuid, whom: $whom, lessons: $lessons, isNumeratorFirst: $isNumeratorFirst, semesterRange: $semesterRange, etag: $etag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Schedule &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.whom, whom) ||
                const DeepCollectionEquality().equals(other.whom, whom)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality()
                    .equals(other.lessons, lessons)) &&
            (identical(other.isNumeratorFirst, isNumeratorFirst) ||
                const DeepCollectionEquality()
                    .equals(other.isNumeratorFirst, isNumeratorFirst)) &&
            (identical(other.semesterRange, semesterRange) ||
                const DeepCollectionEquality()
                    .equals(other.semesterRange, semesterRange)) &&
            (identical(other.etag, etag) ||
                const DeepCollectionEquality().equals(other.etag, etag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(whom) ^
      const DeepCollectionEquality().hash(lessons) ^
      const DeepCollectionEquality().hash(isNumeratorFirst) ^
      const DeepCollectionEquality().hash(semesterRange) ^
      const DeepCollectionEquality().hash(etag);

  @JsonKey(ignore: true)
  @override
  _$ScheduleCopyWith<_Schedule> get copyWith =>
      __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);
}

abstract class _Schedule extends Schedule {
  const factory _Schedule(
      {required String uuid,
      required Whom whom,
      required ScheduleLessonsCollection<Iterable<Lesson>> lessons,
      required bool isNumeratorFirst,
      required SemesterRange semesterRange,
      required String etag}) = _$_Schedule;
  const _Schedule._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  Whom get whom => throw _privateConstructorUsedError;
  @override
  ScheduleLessonsCollection<Iterable<Lesson>> get lessons =>
      throw _privateConstructorUsedError;
  @override
  bool get isNumeratorFirst => throw _privateConstructorUsedError;
  @override
  SemesterRange get semesterRange => throw _privateConstructorUsedError;
  @override
  String get etag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduleCopyWith<_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}
