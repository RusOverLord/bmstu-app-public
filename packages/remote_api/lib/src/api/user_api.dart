import 'package:remote_api/src/exceptions.dart';
import 'package:remote_api/src/remote_api_service.dart';
import 'package:remote_api/src/swagger_generated_code/remote_service.swagger.dart';

class UserApi {
  final RemoteApiService service;
  final String firebaseToken;

  const UserApi({
    required this.service,
    required this.firebaseToken,
  });

  Future<ModelsModelUser?> getUser(UserInfoParams params) async {
    final response = await service.userInfoPost(
      payload: UserTokenBody(
        appVersion: params.appVersion,
        firebaseToken: params.firebaseToken,
        platform: params.platform,
        scheduleUuid: params.scheduleUuid,
      ),
    );
    final data = response.body;

    if (data == null) throw ServerException(error: response.error);

    return data.user;
  }

  Future<bool> logout() async {
    final response = await service.userLogoutPost(
      firebaseToken: firebaseToken,
    );
    final data = response.body;

    if (data == null) throw ServerException(error: response.error);

    return data;
  }
}

class UserInfoParams {
  final int appVersion;
  final String firebaseToken;
  final String platform;
  final String? scheduleUuid;

  UserInfoParams({
    required this.appVersion,
    required this.firebaseToken,
    required this.platform,
    this.scheduleUuid,
  });
}
