import 'package:remote_api/src/exceptions.dart';
import 'package:remote_api/src/remote_api_service.dart';
import 'package:remote_api/src/swagger_generated_code/remote_service.swagger.dart';

const _timeout = const Duration(seconds: 5);

class SearchApi {
  final RemoteApiService service;
  final String? firebaseToken;

  const SearchApi({
    required this.service,
    required this.firebaseToken,
  });

  Future<ModelsModelSearchUnitList> searchFree(String query) async {
    final response = await service.searchQueryPost(
      firebaseToken: firebaseToken,
      payload: SearchQuerySchedule(
        query: query,
      ),
    ).timeout(_timeout);
    final data = response.body;

    if (data == null) throw ServerException(error: response.error);

    return data;
  }

  Future<ModelsModelSearchUnitList> searchStep(String type, String parentUuid) async {
    final response = await service.searchUnitPost(
      firebaseToken: firebaseToken,
      payload: SearchQueryUnit(
        type: type,
        parentUuid: parentUuid,
      ),
    ).timeout(_timeout);
    final data = response.body;

    if (data == null) throw ServerException(error: response.error);

    return data;
  }
}
