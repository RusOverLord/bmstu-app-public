import 'package:remote_api/src/exceptions.dart';
import 'package:remote_api/src/remote_api_service.dart';
import 'package:remote_api/src/swagger_generated_code/remote_service.swagger.dart';

class BmstuIdApi {
  final RemoteApiService service;
  final String firebaseToken;

  const BmstuIdApi({
    required this.service,
    required this.firebaseToken,
  });

  Future<InternalAppApiV2BaumanIdGetBaumanIDResp> getBmstuId() async {
    var response = await service.baumanIdGet(
      firebaseToken: firebaseToken,
    );
    final data = response.body;

    if (data == null) {
      throw ServerException(error: response.error);
    }

    return data;
  }
}
