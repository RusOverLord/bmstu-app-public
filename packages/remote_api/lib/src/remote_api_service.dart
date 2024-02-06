import 'package:chopper/chopper.dart';
import 'package:remote_api/src/api/mappers.dart';
import 'package:remote_api/src/constants.dart';
import 'constants.dart';
import 'swagger_generated_code/remote_service.swagger.dart';
import 'package:logging/logging.dart';
import 'dart:developer' as dev;

part "remote_api_service.chopper.dart";

@ChopperApi()
abstract class RemoteApiService extends ChopperService {
  static RemoteApiService create(String baseUrl, {bool log = false}) {
    final client = ChopperClient(
      baseUrl: baseUrl,
      services: [_$RemoteApiService()],
      converter: JsonSerializableConverter(),
      interceptors: [
        if (log) HttpLoggingInterceptor(),
      ]
    );

    if (log) {
      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen((rec) {
        dev.log('Chopper(${rec.level.name}): ${rec.message}');
      });
    }

    return client.getService<RemoteApiService>();
  }

  @Post(path: '/news/list')
  Future<Response<OldmodelsNewsListNew>> newsListPost({
    @Header(x_bb_fbt) required String firebaseToken,
    @Body() required OldnewsNewsPostKeys payload,
  });

  @Get(path: '/news/{uuid}')
  Future<Response<OldmodelsNewsFullNew>> newsUuidGet({
    @Header(x_bb_fbt) required String firebaseToken,
    @Path('uuid') required String uuid,
  });

  @Get(path: '/schedule/{uuid}')
  Future<Response<DsSchedule>> scheduleUuidGet({
    @Header(x_bb_fbt) required String firebaseToken,
    @Path('uuid') required String uuid,
  });

  @Post(path: '/search/query')
  Future<Response<ModelsModelSearchUnitList>> searchQueryPost({
    @Header(x_bb_fbt) required String? firebaseToken,
    @Body() required SearchQuerySchedule payload,
  });

  @Post(path: '/search/unit')
  Future<Response<ModelsModelSearchUnitList>> searchUnitPost({
    @Header(x_bb_fbt) required String? firebaseToken,
    @Body() required SearchQueryUnit payload,
  });

  @Post(path: '/user/info')
  Future<Response<UserInfoResp>> userInfoPost({
    @Body() required UserTokenBody payload,
  });

  @Post(path: '/user/logout', optionalBody: true)
  Future<Response<bool>> userLogoutPost({
    @Header(x_bb_fbt) required String firebaseToken,
  });

  @Get(path: '/v2/bauman_id/get')
  Future<Response<InternalAppApiV2BaumanIdGetBaumanIDResp>> baumanIdGet({
    @Header(x_bb_fbt) required String firebaseToken,
  });
}
