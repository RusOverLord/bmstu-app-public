import 'package:chopper/chopper.dart';
import 'package:remote_api/src/swagger_generated_code/remote_service.swagger.dart';

final Map<Type, Object Function(Map<String, dynamic>)>
_remoteApiJsonDecoderMappings = {
  AppTokenBody: AppTokenBody.fromJsonFactory,
  InternalAppApiV2BaumanIdGetBaumanIDResp: InternalAppApiV2BaumanIdGetBaumanIDResp.fromJsonFactory,
  ComdsModelError: ComdsModelError.fromJsonFactory,
  CovidCrtCovidCrtStatusResp: CovidCrtCovidCrtStatusResp.fromJsonFactory,
  DsSchedule: DsSchedule.fromJsonFactory,
  ModelsModelError: ModelsModelError.fromJsonFactory,
  ModelsModelGroup: ModelsModelGroup.fromJsonFactory,
  ModelsModelNews: ModelsModelNews.fromJsonFactory,
  ModelsModelNewsAction: ModelsModelNewsAction.fromJsonFactory,
  ModelsModelNewsList: ModelsModelNewsList.fromJsonFactory,
  ModelsModelScheduleLesson: ModelsModelScheduleLesson.fromJsonFactory,
  ModelsModelSearchUnit: ModelsModelSearchUnit.fromJsonFactory,
  ModelsModelSearchUnitList: ModelsModelSearchUnitList.fromJsonFactory,
  ModelsModelTeacher: ModelsModelTeacher.fromJsonFactory,
  ModelsModelUser: ModelsModelUser.fromJsonFactory,
  ModelsModelUserEmployee: ModelsModelUserEmployee.fromJsonFactory,
  ModelsModelUserStudent: ModelsModelUserStudent.fromJsonFactory,
  NewsQueryNews: NewsQueryNews.fromJsonFactory,
  OldmodelsAction: OldmodelsAction.fromJsonFactory,
  OldmodelsNewsFullNew: OldmodelsNewsFullNew.fromJsonFactory,
  OldmodelsNewsItem: OldmodelsNewsItem.fromJsonFactory,
  OldmodelsNewsListNew: OldmodelsNewsListNew.fromJsonFactory,
  OldnewsNewsPostKeys: OldnewsNewsPostKeys.fromJsonFactory,
  SearchQuerySchedule: SearchQuerySchedule.fromJsonFactory,
  SearchQueryUnit: SearchQueryUnit.fromJsonFactory,
  UserInfoResp: UserInfoResp.fromJsonFactory,
  UserTokenBody: UserTokenBody.fromJsonFactory,
};

typedef _JsonFactory<T> = T Function(Map<String, dynamic> json);

class _CustomJsonDecoder {
  _CustomJsonDecoder(this.factories);

  final Map<Type, _JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! _JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class JsonSerializableConverter extends JsonConverter {
  @override
  Response<ResultType> convertResponse<ResultType, Item>(
      Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: _jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final _jsonDecoder = _CustomJsonDecoder(_remoteApiJsonDecoderMappings);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

