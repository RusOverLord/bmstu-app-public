import 'package:remote_api/src/exceptions.dart';
import 'package:remote_api/src/remote_api_service.dart';
import 'package:remote_api/src/swagger_generated_code/remote_service.swagger.dart';

class NewsApi {
  final RemoteApiService service;
  final String firebaseToken;

  const NewsApi({
    required this.service,
    required this.firebaseToken,
  });

  Future<OldmodelsNewsListNew> getNewsList(int page, int pageSize) async {
    final response = await service.newsListPost(
      firebaseToken: firebaseToken,
      payload: OldnewsNewsPostKeys(
        page: page,
        pageSize: pageSize,
      ),
    );
    final data = response.body;

    if (data == null) throw ServerException(error: response.error);

    return data;
  }

  Future<OldmodelsNewsFullNew> getNewsFull(String uuid) async {
    final response = await service.newsUuidGet(
      firebaseToken: firebaseToken,
      uuid: uuid,
    );
    final data = response.body;

    if (data == null) throw ServerException(error: response.error);

    return data;
  }
}
