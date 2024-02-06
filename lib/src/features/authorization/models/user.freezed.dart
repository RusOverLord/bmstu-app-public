// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  UserStudent student(
      {required String uuid,
      required String name,
      required String login,
      required String mail,
      required String groupUuid,
      required String groupName}) {
    return UserStudent(
      uuid: uuid,
      name: name,
      login: login,
      mail: mail,
      groupUuid: groupUuid,
      groupName: groupName,
    );
  }

  UserEmployee employee(
      {required String uuid,
      required String name,
      required String login,
      required String mail,
      required String title,
      required String department}) {
    return UserEmployee(
      uuid: uuid,
      name: name,
      login: login,
      mail: mail,
      title: title,
      department: department,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String name, String login,
            String mail, String groupUuid, String groupName)
        student,
    required TResult Function(String uuid, String name, String login,
            String mail, String title, String department)
        employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uuid, String name, String login, String mail,
            String groupUuid, String groupName)?
        student,
    TResult Function(String uuid, String name, String login, String mail,
            String title, String department)?
        employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String name, String login, String mail,
            String groupUuid, String groupName)?
        student,
    TResult Function(String uuid, String name, String login, String mail,
            String title, String department)?
        employee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStudent value) student,
    required TResult Function(UserEmployee value) employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserStudent value)? student,
    TResult Function(UserEmployee value)? employee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStudent value)? student,
    TResult Function(UserEmployee value)? employee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String uuid, String name, String login, String mail});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? login = freezed,
    Object? mail = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UserStudentCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UserStudentCopyWith(
          UserStudent value, $Res Function(UserStudent) then) =
      _$UserStudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String name,
      String login,
      String mail,
      String groupUuid,
      String groupName});
}

/// @nodoc
class _$UserStudentCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserStudentCopyWith<$Res> {
  _$UserStudentCopyWithImpl(
      UserStudent _value, $Res Function(UserStudent) _then)
      : super(_value, (v) => _then(v as UserStudent));

  @override
  UserStudent get _value => super._value as UserStudent;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? login = freezed,
    Object? mail = freezed,
    Object? groupUuid = freezed,
    Object? groupName = freezed,
  }) {
    return _then(UserStudent(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      groupUuid: groupUuid == freezed
          ? _value.groupUuid
          : groupUuid // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStudent extends UserStudent {
  const _$UserStudent(
      {required this.uuid,
      required this.name,
      required this.login,
      required this.mail,
      required this.groupUuid,
      required this.groupName})
      : super._();

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String login;
  @override
  final String mail;
  @override
  final String groupUuid;
  @override
  final String groupName;

  @override
  String toString() {
    return 'User.student(uuid: $uuid, name: $name, login: $login, mail: $mail, groupUuid: $groupUuid, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserStudent &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.groupUuid, groupUuid) ||
                const DeepCollectionEquality()
                    .equals(other.groupUuid, groupUuid)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(groupUuid) ^
      const DeepCollectionEquality().hash(groupName);

  @JsonKey(ignore: true)
  @override
  $UserStudentCopyWith<UserStudent> get copyWith =>
      _$UserStudentCopyWithImpl<UserStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String name, String login,
            String mail, String groupUuid, String groupName)
        student,
    required TResult Function(String uuid, String name, String login,
            String mail, String title, String department)
        employee,
  }) {
    return student(uuid, name, login, mail, groupUuid, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uuid, String name, String login, String mail,
            String groupUuid, String groupName)?
        student,
    TResult Function(String uuid, String name, String login, String mail,
            String title, String department)?
        employee,
  }) {
    return student?.call(uuid, name, login, mail, groupUuid, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String name, String login, String mail,
            String groupUuid, String groupName)?
        student,
    TResult Function(String uuid, String name, String login, String mail,
            String title, String department)?
        employee,
    required TResult orElse(),
  }) {
    if (student != null) {
      return student(uuid, name, login, mail, groupUuid, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStudent value) student,
    required TResult Function(UserEmployee value) employee,
  }) {
    return student(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserStudent value)? student,
    TResult Function(UserEmployee value)? employee,
  }) {
    return student?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStudent value)? student,
    TResult Function(UserEmployee value)? employee,
    required TResult orElse(),
  }) {
    if (student != null) {
      return student(this);
    }
    return orElse();
  }
}

abstract class UserStudent extends User {
  const factory UserStudent(
      {required String uuid,
      required String name,
      required String login,
      required String mail,
      required String groupUuid,
      required String groupName}) = _$UserStudent;
  const UserStudent._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get login => throw _privateConstructorUsedError;
  @override
  String get mail => throw _privateConstructorUsedError;
  String get groupUuid => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserStudentCopyWith<UserStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEmployeeCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UserEmployeeCopyWith(
          UserEmployee value, $Res Function(UserEmployee) then) =
      _$UserEmployeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String name,
      String login,
      String mail,
      String title,
      String department});
}

/// @nodoc
class _$UserEmployeeCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserEmployeeCopyWith<$Res> {
  _$UserEmployeeCopyWithImpl(
      UserEmployee _value, $Res Function(UserEmployee) _then)
      : super(_value, (v) => _then(v as UserEmployee));

  @override
  UserEmployee get _value => super._value as UserEmployee;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? name = freezed,
    Object? login = freezed,
    Object? mail = freezed,
    Object? title = freezed,
    Object? department = freezed,
  }) {
    return _then(UserEmployee(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEmployee extends UserEmployee {
  const _$UserEmployee(
      {required this.uuid,
      required this.name,
      required this.login,
      required this.mail,
      required this.title,
      required this.department})
      : super._();

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String login;
  @override
  final String mail;
  @override
  final String title;
  @override
  final String department;

  @override
  String toString() {
    return 'User.employee(uuid: $uuid, name: $name, login: $login, mail: $mail, title: $title, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEmployee &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(department);

  @JsonKey(ignore: true)
  @override
  $UserEmployeeCopyWith<UserEmployee> get copyWith =>
      _$UserEmployeeCopyWithImpl<UserEmployee>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uuid, String name, String login,
            String mail, String groupUuid, String groupName)
        student,
    required TResult Function(String uuid, String name, String login,
            String mail, String title, String department)
        employee,
  }) {
    return employee(uuid, name, login, mail, title, department);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uuid, String name, String login, String mail,
            String groupUuid, String groupName)?
        student,
    TResult Function(String uuid, String name, String login, String mail,
            String title, String department)?
        employee,
  }) {
    return employee?.call(uuid, name, login, mail, title, department);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uuid, String name, String login, String mail,
            String groupUuid, String groupName)?
        student,
    TResult Function(String uuid, String name, String login, String mail,
            String title, String department)?
        employee,
    required TResult orElse(),
  }) {
    if (employee != null) {
      return employee(uuid, name, login, mail, title, department);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStudent value) student,
    required TResult Function(UserEmployee value) employee,
  }) {
    return employee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserStudent value)? student,
    TResult Function(UserEmployee value)? employee,
  }) {
    return employee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStudent value)? student,
    TResult Function(UserEmployee value)? employee,
    required TResult orElse(),
  }) {
    if (employee != null) {
      return employee(this);
    }
    return orElse();
  }
}

abstract class UserEmployee extends User {
  const factory UserEmployee(
      {required String uuid,
      required String name,
      required String login,
      required String mail,
      required String title,
      required String department}) = _$UserEmployee;
  const UserEmployee._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get login => throw _privateConstructorUsedError;
  @override
  String get mail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserEmployeeCopyWith<UserEmployee> get copyWith =>
      throw _privateConstructorUsedError;
}
