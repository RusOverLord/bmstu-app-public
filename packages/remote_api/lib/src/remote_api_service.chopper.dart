// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$RemoteApiService extends RemoteApiService {
  _$RemoteApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RemoteApiService;

  @override
  Future<Response<OldmodelsNewsListNew>> newsListPost(
      {required String firebaseToken, required OldnewsNewsPostKeys payload}) {
    final $url = '/news/list';
    final $headers = {
      'x-bb-fbt': firebaseToken,
    };

    final $body = payload;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<OldmodelsNewsListNew, OldmodelsNewsListNew>($request);
  }

  @override
  Future<Response<OldmodelsNewsFullNew>> newsUuidGet(
      {required String firebaseToken, required String uuid}) {
    final $url = '/news/${uuid}';
    final $headers = {
      'x-bb-fbt': firebaseToken,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<OldmodelsNewsFullNew, OldmodelsNewsFullNew>($request);
  }

  @override
  Future<Response<DsSchedule>> scheduleUuidGet(
      {required String firebaseToken, required String uuid}) {
    final $url = '/schedule/${uuid}';
    final $headers = {
      'x-bb-fbt': firebaseToken,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<DsSchedule, DsSchedule>($request);
  }

  @override
  Future<Response<ModelsModelSearchUnitList>> searchQueryPost(
      {required String? firebaseToken, required SearchQuerySchedule payload}) {
    final $url = '/search/query';
    final $headers = {
      if (firebaseToken != null) 'x-bb-fbt': firebaseToken,
    };

    final $body = payload;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ModelsModelSearchUnitList, ModelsModelSearchUnitList>($request);
  }

  @override
  Future<Response<ModelsModelSearchUnitList>> searchUnitPost(
      {required String? firebaseToken, required SearchQueryUnit payload}) {
    final $url = '/search/unit';
    final $headers = {
      if (firebaseToken != null) 'x-bb-fbt': firebaseToken,
    };

    final $body = payload;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client
        .send<ModelsModelSearchUnitList, ModelsModelSearchUnitList>($request);
  }

  @override
  Future<Response<UserInfoResp>> userInfoPost(
      {required UserTokenBody payload}) {
    final $url = '/user/info';
    final $body = payload;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<UserInfoResp, UserInfoResp>($request);
  }

  @override
  Future<Response<bool>> userLogoutPost({required String firebaseToken}) {
    final $url = '/user/logout';
    final $headers = {
      'x-bb-fbt': firebaseToken,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<InternalAppApiV2BaumanIdGetBaumanIDResp>> baumanIdGet(
      {required String firebaseToken}) {
    final $url = '/v2/bauman_id/get';
    final $headers = {
      'x-bb-fbt': firebaseToken,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<InternalAppApiV2BaumanIdGetBaumanIDResp,
        InternalAppApiV2BaumanIdGetBaumanIDResp>($request);
  }
}
