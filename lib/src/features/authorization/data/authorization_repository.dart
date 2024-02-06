import 'package:bbmstu_app/src/constants/build_number.dart';
import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:bbmstu_app/src/features/authorization/data/authorization_local_data_source.dart';
import 'package:bbmstu_app/src/features/authorization/models/user.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:remote_api/remote_api.dart';
import 'user_mapper.dart';

abstract class IAuthorizationRepository {
  UserType? get userType;

  Future<void> updateUserType(UserType value);

  User? get user;

  Future<User?> updateUserInfo({
    required String firebaseToken,
    String? mainScheduleUuid,
  });

  Future<void> logout();

  String? get mainUuidOverride;

  Future<void> updateMainUuidOverride(String value);

  Future<void> deleteMainUuidOverride();
}

class AuthorizationRepository implements IAuthorizationRepository {
  final IAuthorizationLocalDataSource _local;
  final UserApi _remote;

  AuthorizationRepository({
    required IAuthorizationLocalDataSource local,
    required UserApi remote,
  })  : _local = local,
        _remote = remote;

  @override
  UserType? get userType => _local.userType;

  @override
  Future<void> updateUserType(UserType userType) => _local.updateUserType(userType);

  @override
  User? get user => _local.user;

  /// Запрашиваем пользователя [User] с сервера.
  /// Если пользователь не авторизован возвращаем null.
  @override
  Future<User?> updateUserInfo({
    required String firebaseToken,
    String? mainScheduleUuid,
  }) async {
    final params = UserInfoParams(
      appVersion: buildNumber,
      firebaseToken: firebaseToken,
      platform: platform.operatingSystem,
      scheduleUuid: mainScheduleUuid,
    );

    final userModel = await _remote.getUser(params);

    if (userModel == null) return null;

    final user = userModel.toModel();
    await _local.updateUser(user);
    return user;
  }

  /// Выходим из ЭУ, если выход успешен - удаляем пользователя [User] из настроек.
  @override
  Future<void> logout() async {
    await _remote.logout();
    await _local.deleteUser();
  }

  @override
  String? get mainUuidOverride => _local.mainUuidOverride.value;

  @override
  Future<void> updateMainUuidOverride(String value) => _local.mainUuidOverride.updateValue(value);

  @override
  Future<void> deleteMainUuidOverride() => _local.mainUuidOverride.delete();
}
