import 'package:remote_api/src/exceptions.dart';
import 'package:remote_api/src/remote_api_service.dart';
import 'package:remote_api/src/swagger_generated_code/remote_service.swagger.dart';

class ScheduleApi {
  final RemoteApiService service;
  final String firebaseToken;

  const ScheduleApi({
    required this.service,
    required this.firebaseToken,
  });

  Future<DsSchedule> getSchedule(String uuid) async {
    final response = await service.scheduleUuidGet(
      firebaseToken: firebaseToken,
      uuid: uuid,
    );

    final data = response.body;

    if (response.statusCode == 404) throw ServerException404(error: response.error);
    if (data == null) throw ServerException(error: response.error);

    return data;
  }
}
