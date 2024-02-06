import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:remote_api/remote_api.dart';

extension ModelsModelUserNullableMapper on ModelsModelUser {
  User toModel() => student != null ? _toStudent() : _toEmployee();

  User _toStudent() => User.student(
    uuid: uuid ?? '',
    name: name ?? '',
    login: login ?? '',
    mail: mail ?? '',
    groupUuid: student!.groupUuid ?? '',
    groupName: student!.groupName ?? '',
  );

  User _toEmployee() => User.employee(
    uuid: uuid ?? '',
    name: name ?? '',
    login: login ?? '',
    mail: mail ?? '',
    department: employee!.department ?? '',
    title: employee!.title ?? '',
  );
}
