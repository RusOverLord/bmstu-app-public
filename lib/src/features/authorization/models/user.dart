// import 'package:bbmstu_app/src/features/authorization/models/user_info.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// import 'user_type.dart';
//
// part 'user.freezed.dart';
//
// @freezed
// abstract class User with _$User {
//   const User._();
//
//   const factory User.authorized({
//     required UserInfo info,
//   }) = UserAuthorized;
//
//   const factory User.notAuthorized({
//     required UserType type,
//   }) = UserNotAuthorized;
//
//   UserType get userType => map(
//     authorized: (authorized) => authorized.info.userType,
//     notAuthorized: (notAuthorized) => notAuthorized.type,
//   );
//
//   UserInfo? get userInfoOrNull => map(
//     authorized: (authorized) => authorized.info,
//     notAuthorized: (_) => null,
//   );
// }

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_type.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User.student({
    required String uuid,
    required String name,
    required String login,
    required String mail,
    required String groupUuid,
    required String groupName,
  }) = UserStudent;

  const factory User.employee({
    required String uuid,
    required String name,
    required String login,
    required String mail,
    required String title,
    required String department,
  }) = UserEmployee;

  bool get isStudent => maybeMap(
    student: (_) => true,
    orElse: () => false,
  );

  bool get isEmployee => maybeMap(
    employee: (_) => true,
    orElse: () => false,
  );

  UserType get userType => map(
    student: (_) => UserType.student,
    employee: (_) => UserType.employee,
  );

  String? get scheduleUuid => map(
    student: (student) => student.groupUuid,
    employee: (_) => null,
  );
}
