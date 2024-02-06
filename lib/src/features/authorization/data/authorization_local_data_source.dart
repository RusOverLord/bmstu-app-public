import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';

abstract class IAuthorizationLocalDataSource {
  UserType? get userType;

  Future<void> updateUserType(UserType userType);

  User? get user;

  Future<void> updateUser(User user);

  Future<void> deleteUser();

  ISetting<String?, String> get mainUuidOverride;
}

class AuthorizationLocalDataSource extends SettingsAccessor implements IAuthorizationLocalDataSource {
  AuthorizationLocalDataSource({
    required ISettingsLocalDataSource settings,
  }) : super(settings);

  late final _userType = $Enum(_userTypeKey, UserType.values);
  /// User
  late final _hasLogin = $BoolDefault(_hasLoginKey, false);
  late final _login = $StringDefault(_loginKey, '');
  late final _mail = $StringDefault(_mailKey, '');
  late final _name = $StringDefault(_nameKey, '');
  late final _uuid = $StringDefault(_uuidKey, '');
  /// User_Student
  late final _groupName = $StringDefault(_groupNameKey, '');
  late final _groupUuid = $StringDefault(_groupUuidKey, '');
  /// User_Employee
  late final _department = $StringDefault(_departmentKey, '');
  late final _title = $StringDefault(_titleKey, '');

  /// Schedule
  @override
  late final mainUuidOverride = $String(_mainUuidOverrideKey);

  @override
  UserType? get userType => _userType.value;

  /// Обновляет тип пользователя [UserType]
  /// Если текущий пользователь уже есть, то:
  /// если он имеет такой же тип - ничего не делаем
  /// иначе удаляем этого пользователя и обновляем [UserType]
  @override
  Future<void> updateUserType(UserType value) async {
    final _user = user;

    if (_user != null) {
      if (_user.userType == value) {
        return;
      } else {
        await deleteUser();
      }
    }

    await _userType.updateValue(value);
  }

  @override
  User? get user {
    final userType = _userType.value;

    if (userType == null || !_hasLogin.value) {
      return null;
    }

    return _getUser(userType);
  }

  User _getUser(UserType userType) {
    switch (userType) {
      case UserType.student:
        return User.student(
          uuid: _uuid.value,
          name: _name.value,
          login: _login.value,
          mail: _mail.value,
          groupUuid: _groupUuid.value,
          groupName: _groupName.value,
        );
      case UserType.employee:
        return User.employee(
          uuid: _uuid.value,
          name: _name.value,
          login: _login.value,
          mail: _mail.value,
          title: _title.value,
          department: _department.value,
        );
    }
  }

  @override
  Future<void> updateUser(User user) async {
    final _user = this.user;

    if (_user == null) {
      return _updateUser(user);
    }

    if (_user == user) {
      return;
    }

    await deleteUser();
    await _updateUser(user);
  }

  Future<void> _updateUser(User user) => Future.wait([
        _hasLogin.updateValue(true),
        updateUserType(user.userType),
        ...user.map(
          student: _updateStudent,
          employee: _updateEmployee,
        ),
      ]);

  List<Future<void>> _updateStudent(UserStudent student) => [
        _uuid.updateValue(student.uuid),
        _name.updateValue(student.name),
        _login.updateValue(student.login),
        _mail.updateValue(student.mail),
        _groupUuid.updateValue(student.groupUuid),
        _groupName.updateValue(student.groupName),
      ];

  List<Future<void>> _updateEmployee(UserEmployee employee) => [
        _uuid.updateValue(employee.uuid),
        _name.updateValue(employee.name),
        _login.updateValue(employee.login),
        _mail.updateValue(employee.mail),
        _title.updateValue(employee.title),
        _department.updateValue(employee.department),
      ];

  @override
  Future<void> deleteUser() => Future.wait([
        _hasLogin.delete(),
        _uuid.delete(),
        _name.delete(),
        _login.delete(),
        _mail.delete(),
        _groupUuid.delete(),
        _groupName.delete(),
        _title.delete(),
        _department.delete(),
      ]);
}

/// User
const _userPrefix = 'settings_user_';
const _userTypeKey = _userPrefix + 'user_type';
const _loginKey = _userPrefix + 'login';
const _mailKey = _userPrefix + 'mail';
const _nameKey = _userPrefix + 'name';
const _uuidKey = _userPrefix + 'uuid';

/// User_Student
const _groupNameKey = _userPrefix + 'group_name';
const _groupUuidKey = _userPrefix + 'group_uuid';

/// User_Employee
const _titleKey = _userPrefix + 'title';
const _departmentKey = _userPrefix + 'department';

/// Settings
const _settingsPrefix = 'settings_';
const _hasLoginKey = _settingsPrefix + 'has_login';

/// Schedule
const _schedulePrefix = 'schedule_';
const _mainUuidOverrideKey = _schedulePrefix + 'main_schedule_uuid';
