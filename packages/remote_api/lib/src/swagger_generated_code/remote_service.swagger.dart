import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

part 'remote_service.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AppTokenBody {
  AppTokenBody({
    this.appVersion,
    this.firebaseToken,
    this.platform,
    this.scheduleUuid,
  });

  factory AppTokenBody.fromJson(Map<String, dynamic> json) =>
      _$AppTokenBodyFromJson(json);

  @JsonKey(name: 'app_version', defaultValue: 0)
  final int? appVersion;
  @JsonKey(name: 'firebase_token', defaultValue: '')
  final String? firebaseToken;
  @JsonKey(name: 'platform', defaultValue: '')
  final String? platform;
  @JsonKey(name: 'schedule_uuid', defaultValue: '')
  final String? scheduleUuid;
  static const fromJsonFactory = _$AppTokenBodyFromJson;
  static const toJsonFactory = _$AppTokenBodyToJson;
  Map<String, dynamic> toJson() => _$AppTokenBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppTokenBody &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.firebaseToken, firebaseToken) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseToken, firebaseToken)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.scheduleUuid, scheduleUuid) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleUuid, scheduleUuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(firebaseToken) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(scheduleUuid) ^
      runtimeType.hashCode;
}

extension $AppTokenBodyExtension on AppTokenBody {
  AppTokenBody copyWith(
      {int? appVersion,
      String? firebaseToken,
      String? platform,
      String? scheduleUuid}) {
    return AppTokenBody(
        appVersion: appVersion ?? this.appVersion,
        firebaseToken: firebaseToken ?? this.firebaseToken,
        platform: platform ?? this.platform,
        scheduleUuid: scheduleUuid ?? this.scheduleUuid);
  }
}

@JsonSerializable(explicitToJson: true)
class ComdsModelError {
  ComdsModelError({
    this.description,
    this.error,
    this.type,
  });

  factory ComdsModelError.fromJson(Map<String, dynamic> json) =>
      _$ComdsModelErrorFromJson(json);

  @JsonKey(name: 'description', defaultValue: '')
  final String? description;
  @JsonKey(name: 'error', defaultValue: '')
  final String? error;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  static const fromJsonFactory = _$ComdsModelErrorFromJson;
  static const toJsonFactory = _$ComdsModelErrorToJson;
  Map<String, dynamic> toJson() => _$ComdsModelErrorToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ComdsModelError &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ComdsModelErrorExtension on ComdsModelError {
  ComdsModelError copyWith({String? description, String? error, String? type}) {
    return ComdsModelError(
        description: description ?? this.description,
        error: error ?? this.error,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class CovidCrtCovidCrtStatusResp {
  CovidCrtCovidCrtStatusResp({
    this.expiredAt,
    this.issuedAt,
    this.qrUrl,
    this.status,
  });

  factory CovidCrtCovidCrtStatusResp.fromJson(Map<String, dynamic> json) =>
      _$CovidCrtCovidCrtStatusRespFromJson(json);

  @JsonKey(name: 'expired_at', defaultValue: '')
  final String? expiredAt;
  @JsonKey(name: 'issued_at', defaultValue: '')
  final String? issuedAt;
  @JsonKey(name: 'qr_url', defaultValue: '')
  final String? qrUrl;
  @JsonKey(name: 'status', defaultValue: '')
  final String? status;
  static const fromJsonFactory = _$CovidCrtCovidCrtStatusRespFromJson;
  static const toJsonFactory = _$CovidCrtCovidCrtStatusRespToJson;
  Map<String, dynamic> toJson() => _$CovidCrtCovidCrtStatusRespToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CovidCrtCovidCrtStatusResp &&
            (identical(other.expiredAt, expiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiredAt, expiredAt)) &&
            (identical(other.issuedAt, issuedAt) ||
                const DeepCollectionEquality()
                    .equals(other.issuedAt, issuedAt)) &&
            (identical(other.qrUrl, qrUrl) ||
                const DeepCollectionEquality().equals(other.qrUrl, qrUrl)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(expiredAt) ^
      const DeepCollectionEquality().hash(issuedAt) ^
      const DeepCollectionEquality().hash(qrUrl) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $CovidCrtCovidCrtStatusRespExtension on CovidCrtCovidCrtStatusResp {
  CovidCrtCovidCrtStatusResp copyWith(
      {String? expiredAt, String? issuedAt, String? qrUrl, String? status}) {
    return CovidCrtCovidCrtStatusResp(
        expiredAt: expiredAt ?? this.expiredAt,
        issuedAt: issuedAt ?? this.issuedAt,
        qrUrl: qrUrl ?? this.qrUrl,
        status: status ?? this.status);
  }
}

@JsonSerializable(explicitToJson: true)
class DsSchedule {
  DsSchedule({
    this.etag,
    this.group,
    this.isNumeratorFirst,
    this.lessons,
    this.semesterEnd,
    this.semesterStart,
    this.teacher,
    this.type,
  });

  factory DsSchedule.fromJson(Map<String, dynamic> json) =>
      _$DsScheduleFromJson(json);

  @JsonKey(name: 'etag', defaultValue: '')
  final String? etag;
  @JsonKey(name: 'group')
  final ModelsModelGroup? group;
  @JsonKey(name: 'is_numerator_first', defaultValue: false)
  final bool? isNumeratorFirst;
  @JsonKey(name: 'lessons', defaultValue: <ModelsModelScheduleLesson>[])
  final List<ModelsModelScheduleLesson>? lessons;
  @JsonKey(name: 'semester_end', defaultValue: '')
  final String? semesterEnd;
  @JsonKey(name: 'semester_start', defaultValue: '')
  final String? semesterStart;
  @JsonKey(name: 'teacher')
  final ModelsModelTeacher? teacher;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  static const fromJsonFactory = _$DsScheduleFromJson;
  static const toJsonFactory = _$DsScheduleToJson;
  Map<String, dynamic> toJson() => _$DsScheduleToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DsSchedule &&
            (identical(other.etag, etag) ||
                const DeepCollectionEquality().equals(other.etag, etag)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.isNumeratorFirst, isNumeratorFirst) ||
                const DeepCollectionEquality()
                    .equals(other.isNumeratorFirst, isNumeratorFirst)) &&
            (identical(other.lessons, lessons) ||
                const DeepCollectionEquality()
                    .equals(other.lessons, lessons)) &&
            (identical(other.semesterEnd, semesterEnd) ||
                const DeepCollectionEquality()
                    .equals(other.semesterEnd, semesterEnd)) &&
            (identical(other.semesterStart, semesterStart) ||
                const DeepCollectionEquality()
                    .equals(other.semesterStart, semesterStart)) &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality()
                    .equals(other.teacher, teacher)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(etag) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(isNumeratorFirst) ^
      const DeepCollectionEquality().hash(lessons) ^
      const DeepCollectionEquality().hash(semesterEnd) ^
      const DeepCollectionEquality().hash(semesterStart) ^
      const DeepCollectionEquality().hash(teacher) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $DsScheduleExtension on DsSchedule {
  DsSchedule copyWith(
      {String? etag,
      ModelsModelGroup? group,
      bool? isNumeratorFirst,
      List<ModelsModelScheduleLesson>? lessons,
      String? semesterEnd,
      String? semesterStart,
      ModelsModelTeacher? teacher,
      String? type}) {
    return DsSchedule(
        etag: etag ?? this.etag,
        group: group ?? this.group,
        isNumeratorFirst: isNumeratorFirst ?? this.isNumeratorFirst,
        lessons: lessons ?? this.lessons,
        semesterEnd: semesterEnd ?? this.semesterEnd,
        semesterStart: semesterStart ?? this.semesterStart,
        teacher: teacher ?? this.teacher,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class InternalAppApiV1BaumanIdGetBaumanIDResp {
  InternalAppApiV1BaumanIdGetBaumanIDResp({
    this.accessIsAllowed,
    this.qrString,
  });

  factory InternalAppApiV1BaumanIdGetBaumanIDResp.fromJson(
          Map<String, dynamic> json) =>
      _$InternalAppApiV1BaumanIdGetBaumanIDRespFromJson(json);

  @JsonKey(name: 'access_is_allowed', defaultValue: false)
  final bool? accessIsAllowed;
  @JsonKey(name: 'qr_string', defaultValue: '')
  final String? qrString;
  static const fromJsonFactory =
      _$InternalAppApiV1BaumanIdGetBaumanIDRespFromJson;
  static const toJsonFactory = _$InternalAppApiV1BaumanIdGetBaumanIDRespToJson;
  Map<String, dynamic> toJson() =>
      _$InternalAppApiV1BaumanIdGetBaumanIDRespToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InternalAppApiV1BaumanIdGetBaumanIDResp &&
            (identical(other.accessIsAllowed, accessIsAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.accessIsAllowed, accessIsAllowed)) &&
            (identical(other.qrString, qrString) ||
                const DeepCollectionEquality()
                    .equals(other.qrString, qrString)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessIsAllowed) ^
      const DeepCollectionEquality().hash(qrString) ^
      runtimeType.hashCode;
}

extension $InternalAppApiV1BaumanIdGetBaumanIDRespExtension
    on InternalAppApiV1BaumanIdGetBaumanIDResp {
  InternalAppApiV1BaumanIdGetBaumanIDResp copyWith(
      {bool? accessIsAllowed, String? qrString}) {
    return InternalAppApiV1BaumanIdGetBaumanIDResp(
        accessIsAllowed: accessIsAllowed ?? this.accessIsAllowed,
        qrString: qrString ?? this.qrString);
  }
}

@JsonSerializable(explicitToJson: true)
class InternalAppApiV2BaumanIdGetBaumanIDResp {
  InternalAppApiV2BaumanIdGetBaumanIDResp({
    this.accessIsAllowed,
    this.expiredAt,
    this.qrString,
  });

  factory InternalAppApiV2BaumanIdGetBaumanIDResp.fromJson(
          Map<String, dynamic> json) =>
      _$InternalAppApiV2BaumanIdGetBaumanIDRespFromJson(json);

  @JsonKey(name: 'access_is_allowed', defaultValue: false)
  final bool? accessIsAllowed;
  @JsonKey(name: 'expired_at', defaultValue: '')
  final String? expiredAt;
  @JsonKey(name: 'qr_string', defaultValue: '')
  final String? qrString;
  static const fromJsonFactory =
      _$InternalAppApiV2BaumanIdGetBaumanIDRespFromJson;
  static const toJsonFactory = _$InternalAppApiV2BaumanIdGetBaumanIDRespToJson;
  Map<String, dynamic> toJson() =>
      _$InternalAppApiV2BaumanIdGetBaumanIDRespToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InternalAppApiV2BaumanIdGetBaumanIDResp &&
            (identical(other.accessIsAllowed, accessIsAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.accessIsAllowed, accessIsAllowed)) &&
            (identical(other.expiredAt, expiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiredAt, expiredAt)) &&
            (identical(other.qrString, qrString) ||
                const DeepCollectionEquality()
                    .equals(other.qrString, qrString)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessIsAllowed) ^
      const DeepCollectionEquality().hash(expiredAt) ^
      const DeepCollectionEquality().hash(qrString) ^
      runtimeType.hashCode;
}

extension $InternalAppApiV2BaumanIdGetBaumanIDRespExtension
    on InternalAppApiV2BaumanIdGetBaumanIDResp {
  InternalAppApiV2BaumanIdGetBaumanIDResp copyWith(
      {bool? accessIsAllowed, String? expiredAt, String? qrString}) {
    return InternalAppApiV2BaumanIdGetBaumanIDResp(
        accessIsAllowed: accessIsAllowed ?? this.accessIsAllowed,
        expiredAt: expiredAt ?? this.expiredAt,
        qrString: qrString ?? this.qrString);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelError {
  ModelsModelError({
    this.description,
    this.error,
    this.type,
  });

  factory ModelsModelError.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelErrorFromJson(json);

  @JsonKey(name: 'description', defaultValue: '')
  final String? description;
  @JsonKey(name: 'error', defaultValue: '')
  final String? error;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  static const fromJsonFactory = _$ModelsModelErrorFromJson;
  static const toJsonFactory = _$ModelsModelErrorToJson;
  Map<String, dynamic> toJson() => _$ModelsModelErrorToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelError &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ModelsModelErrorExtension on ModelsModelError {
  ModelsModelError copyWith(
      {String? description, String? error, String? type}) {
    return ModelsModelError(
        description: description ?? this.description,
        error: error ?? this.error,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelGroup {
  ModelsModelGroup({
    this.name,
    this.uuid,
  });

  factory ModelsModelGroup.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelGroupFromJson(json);

  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  static const fromJsonFactory = _$ModelsModelGroupFromJson;
  static const toJsonFactory = _$ModelsModelGroupToJson;
  Map<String, dynamic> toJson() => _$ModelsModelGroupToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelGroup &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(uuid) ^
      runtimeType.hashCode;
}

extension $ModelsModelGroupExtension on ModelsModelGroup {
  ModelsModelGroup copyWith({String? name, String? uuid}) {
    return ModelsModelGroup(name: name ?? this.name, uuid: uuid ?? this.uuid);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelNews {
  ModelsModelNews({
    this.action,
    this.author,
    this.created,
    this.deleted,
    this.detailDescription,
    this.detailPictureUrl,
    this.modified,
    this.previewDescription,
    this.previewPictureUrl,
    this.published,
    this.title,
    this.uuid,
    this.views,
  });

  factory ModelsModelNews.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelNewsFromJson(json);

  @JsonKey(name: 'action')
  final ModelsModelNewsAction? action;
  @JsonKey(name: 'author', defaultValue: '')
  final String? author;
  @JsonKey(name: 'created', defaultValue: '')
  final String? created;
  @JsonKey(name: 'deleted', defaultValue: '')
  final String? deleted;
  @JsonKey(name: 'detail_description', defaultValue: '')
  final String? detailDescription;
  @JsonKey(name: 'detail_picture_url', defaultValue: '')
  final String? detailPictureUrl;
  @JsonKey(name: 'modified', defaultValue: '')
  final String? modified;
  @JsonKey(name: 'preview_description', defaultValue: '')
  final String? previewDescription;
  @JsonKey(name: 'preview_picture_url', defaultValue: '')
  final String? previewPictureUrl;
  @JsonKey(name: 'published', defaultValue: '')
  final String? published;
  @JsonKey(name: 'title', defaultValue: '')
  final String? title;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  @JsonKey(name: 'views', defaultValue: 0)
  final int? views;
  static const fromJsonFactory = _$ModelsModelNewsFromJson;
  static const toJsonFactory = _$ModelsModelNewsToJson;
  Map<String, dynamic> toJson() => _$ModelsModelNewsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelNews &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality()
                    .equals(other.deleted, deleted)) &&
            (identical(other.detailDescription, detailDescription) ||
                const DeepCollectionEquality()
                    .equals(other.detailDescription, detailDescription)) &&
            (identical(other.detailPictureUrl, detailPictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.detailPictureUrl, detailPictureUrl)) &&
            (identical(other.modified, modified) ||
                const DeepCollectionEquality()
                    .equals(other.modified, modified)) &&
            (identical(other.previewDescription, previewDescription) ||
                const DeepCollectionEquality()
                    .equals(other.previewDescription, previewDescription)) &&
            (identical(other.previewPictureUrl, previewPictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewPictureUrl, previewPictureUrl)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(deleted) ^
      const DeepCollectionEquality().hash(detailDescription) ^
      const DeepCollectionEquality().hash(detailPictureUrl) ^
      const DeepCollectionEquality().hash(modified) ^
      const DeepCollectionEquality().hash(previewDescription) ^
      const DeepCollectionEquality().hash(previewPictureUrl) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(views) ^
      runtimeType.hashCode;
}

extension $ModelsModelNewsExtension on ModelsModelNews {
  ModelsModelNews copyWith(
      {ModelsModelNewsAction? action,
      String? author,
      String? created,
      String? deleted,
      String? detailDescription,
      String? detailPictureUrl,
      String? modified,
      String? previewDescription,
      String? previewPictureUrl,
      String? published,
      String? title,
      String? uuid,
      int? views}) {
    return ModelsModelNews(
        action: action ?? this.action,
        author: author ?? this.author,
        created: created ?? this.created,
        deleted: deleted ?? this.deleted,
        detailDescription: detailDescription ?? this.detailDescription,
        detailPictureUrl: detailPictureUrl ?? this.detailPictureUrl,
        modified: modified ?? this.modified,
        previewDescription: previewDescription ?? this.previewDescription,
        previewPictureUrl: previewPictureUrl ?? this.previewPictureUrl,
        published: published ?? this.published,
        title: title ?? this.title,
        uuid: uuid ?? this.uuid,
        views: views ?? this.views);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelNewsAction {
  ModelsModelNewsAction({
    this.type,
    this.value,
  });

  factory ModelsModelNewsAction.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelNewsActionFromJson(json);

  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'value', defaultValue: '')
  final String? value;
  static const fromJsonFactory = _$ModelsModelNewsActionFromJson;
  static const toJsonFactory = _$ModelsModelNewsActionToJson;
  Map<String, dynamic> toJson() => _$ModelsModelNewsActionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelNewsAction &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $ModelsModelNewsActionExtension on ModelsModelNewsAction {
  ModelsModelNewsAction copyWith({String? type, String? value}) {
    return ModelsModelNewsAction(
        type: type ?? this.type, value: value ?? this.value);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelNewsList {
  ModelsModelNewsList({
    this.items,
    this.total,
  });

  factory ModelsModelNewsList.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelNewsListFromJson(json);

  @JsonKey(name: 'items', defaultValue: <ModelsModelNews>[])
  final List<ModelsModelNews>? items;
  @JsonKey(name: 'total', defaultValue: 0)
  final int? total;
  static const fromJsonFactory = _$ModelsModelNewsListFromJson;
  static const toJsonFactory = _$ModelsModelNewsListToJson;
  Map<String, dynamic> toJson() => _$ModelsModelNewsListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelNewsList &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsModelNewsListExtension on ModelsModelNewsList {
  ModelsModelNewsList copyWith({List<ModelsModelNews>? items, int? total}) {
    return ModelsModelNewsList(
        items: items ?? this.items, total: total ?? this.total);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelScheduleLesson {
  ModelsModelScheduleLesson({
    this.cabinet,
    this.day,
    this.endAt,
    this.groups,
    this.isNumerator,
    this.name,
    this.startAt,
    this.teachers,
    this.type,
    this.uuid,
  });

  factory ModelsModelScheduleLesson.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelScheduleLessonFromJson(json);

  @JsonKey(name: 'cabinet', defaultValue: '')
  final String? cabinet;
  @JsonKey(name: 'day', defaultValue: 0)
  final int? day;
  @JsonKey(name: 'end_at', defaultValue: '')
  final String? endAt;
  @JsonKey(name: 'groups', defaultValue: <ModelsModelGroup>[])
  final List<ModelsModelGroup>? groups;
  @JsonKey(name: 'is_numerator', defaultValue: false)
  final bool? isNumerator;
  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'start_at', defaultValue: '')
  final String? startAt;
  @JsonKey(name: 'teachers', defaultValue: <ModelsModelTeacher>[])
  final List<ModelsModelTeacher>? teachers;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  static const fromJsonFactory = _$ModelsModelScheduleLessonFromJson;
  static const toJsonFactory = _$ModelsModelScheduleLessonToJson;
  Map<String, dynamic> toJson() => _$ModelsModelScheduleLessonToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelScheduleLesson &&
            (identical(other.cabinet, cabinet) ||
                const DeepCollectionEquality()
                    .equals(other.cabinet, cabinet)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.endAt, endAt) ||
                const DeepCollectionEquality().equals(other.endAt, endAt)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.isNumerator, isNumerator) ||
                const DeepCollectionEquality()
                    .equals(other.isNumerator, isNumerator)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.startAt, startAt) ||
                const DeepCollectionEquality()
                    .equals(other.startAt, startAt)) &&
            (identical(other.teachers, teachers) ||
                const DeepCollectionEquality()
                    .equals(other.teachers, teachers)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cabinet) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(endAt) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(isNumerator) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(startAt) ^
      const DeepCollectionEquality().hash(teachers) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uuid) ^
      runtimeType.hashCode;
}

extension $ModelsModelScheduleLessonExtension on ModelsModelScheduleLesson {
  ModelsModelScheduleLesson copyWith(
      {String? cabinet,
      int? day,
      String? endAt,
      List<ModelsModelGroup>? groups,
      bool? isNumerator,
      String? name,
      String? startAt,
      List<ModelsModelTeacher>? teachers,
      String? type,
      String? uuid}) {
    return ModelsModelScheduleLesson(
        cabinet: cabinet ?? this.cabinet,
        day: day ?? this.day,
        endAt: endAt ?? this.endAt,
        groups: groups ?? this.groups,
        isNumerator: isNumerator ?? this.isNumerator,
        name: name ?? this.name,
        startAt: startAt ?? this.startAt,
        teachers: teachers ?? this.teachers,
        type: type ?? this.type,
        uuid: uuid ?? this.uuid);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelSearchUnit {
  ModelsModelSearchUnit({
    this.additional,
    this.caption,
    this.type,
    this.uuid,
  });

  factory ModelsModelSearchUnit.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelSearchUnitFromJson(json);

  @JsonKey(name: 'additional', defaultValue: '')
  final String? additional;
  @JsonKey(name: 'caption', defaultValue: '')
  final String? caption;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  static const fromJsonFactory = _$ModelsModelSearchUnitFromJson;
  static const toJsonFactory = _$ModelsModelSearchUnitToJson;
  Map<String, dynamic> toJson() => _$ModelsModelSearchUnitToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelSearchUnit &&
            (identical(other.additional, additional) ||
                const DeepCollectionEquality()
                    .equals(other.additional, additional)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(additional) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(uuid) ^
      runtimeType.hashCode;
}

extension $ModelsModelSearchUnitExtension on ModelsModelSearchUnit {
  ModelsModelSearchUnit copyWith(
      {String? additional, String? caption, String? type, String? uuid}) {
    return ModelsModelSearchUnit(
        additional: additional ?? this.additional,
        caption: caption ?? this.caption,
        type: type ?? this.type,
        uuid: uuid ?? this.uuid);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelSearchUnitList {
  ModelsModelSearchUnitList({
    this.items,
    this.total,
  });

  factory ModelsModelSearchUnitList.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelSearchUnitListFromJson(json);

  @JsonKey(name: 'items', defaultValue: <ModelsModelSearchUnit>[])
  final List<ModelsModelSearchUnit>? items;
  @JsonKey(name: 'total', defaultValue: 0)
  final int? total;
  static const fromJsonFactory = _$ModelsModelSearchUnitListFromJson;
  static const toJsonFactory = _$ModelsModelSearchUnitListToJson;
  Map<String, dynamic> toJson() => _$ModelsModelSearchUnitListToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelSearchUnitList &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $ModelsModelSearchUnitListExtension on ModelsModelSearchUnitList {
  ModelsModelSearchUnitList copyWith(
      {List<ModelsModelSearchUnit>? items, int? total}) {
    return ModelsModelSearchUnitList(
        items: items ?? this.items, total: total ?? this.total);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelTeacher {
  ModelsModelTeacher({
    this.name,
    this.uuid,
  });

  factory ModelsModelTeacher.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelTeacherFromJson(json);

  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  static const fromJsonFactory = _$ModelsModelTeacherFromJson;
  static const toJsonFactory = _$ModelsModelTeacherToJson;
  Map<String, dynamic> toJson() => _$ModelsModelTeacherToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelTeacher &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(uuid) ^
      runtimeType.hashCode;
}

extension $ModelsModelTeacherExtension on ModelsModelTeacher {
  ModelsModelTeacher copyWith({String? name, String? uuid}) {
    return ModelsModelTeacher(name: name ?? this.name, uuid: uuid ?? this.uuid);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelUser {
  ModelsModelUser({
    this.employee,
    this.login,
    this.mail,
    this.name,
    this.student,
    this.uuid,
  });

  factory ModelsModelUser.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelUserFromJson(json);

  @JsonKey(name: 'employee')
  final ModelsModelUserEmployee? employee;
  @JsonKey(name: 'login', defaultValue: '')
  final String? login;
  @JsonKey(name: 'mail', defaultValue: '')
  final String? mail;
  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'student')
  final ModelsModelUserStudent? student;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  static const fromJsonFactory = _$ModelsModelUserFromJson;
  static const toJsonFactory = _$ModelsModelUserToJson;
  Map<String, dynamic> toJson() => _$ModelsModelUserToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelUser &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.mail, mail) ||
                const DeepCollectionEquality().equals(other.mail, mail)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.student, student) ||
                const DeepCollectionEquality()
                    .equals(other.student, student)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(mail) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(student) ^
      const DeepCollectionEquality().hash(uuid) ^
      runtimeType.hashCode;
}

extension $ModelsModelUserExtension on ModelsModelUser {
  ModelsModelUser copyWith(
      {ModelsModelUserEmployee? employee,
      String? login,
      String? mail,
      String? name,
      ModelsModelUserStudent? student,
      String? uuid}) {
    return ModelsModelUser(
        employee: employee ?? this.employee,
        login: login ?? this.login,
        mail: mail ?? this.mail,
        name: name ?? this.name,
        student: student ?? this.student,
        uuid: uuid ?? this.uuid);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelUserEmployee {
  ModelsModelUserEmployee({
    this.department,
    this.title,
  });

  factory ModelsModelUserEmployee.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelUserEmployeeFromJson(json);

  @JsonKey(name: 'department', defaultValue: '')
  final String? department;
  @JsonKey(name: 'title', defaultValue: '')
  final String? title;
  static const fromJsonFactory = _$ModelsModelUserEmployeeFromJson;
  static const toJsonFactory = _$ModelsModelUserEmployeeToJson;
  Map<String, dynamic> toJson() => _$ModelsModelUserEmployeeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelUserEmployee &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(title) ^
      runtimeType.hashCode;
}

extension $ModelsModelUserEmployeeExtension on ModelsModelUserEmployee {
  ModelsModelUserEmployee copyWith({String? department, String? title}) {
    return ModelsModelUserEmployee(
        department: department ?? this.department, title: title ?? this.title);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelsModelUserStudent {
  ModelsModelUserStudent({
    this.groupName,
    this.groupUuid,
  });

  factory ModelsModelUserStudent.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelUserStudentFromJson(json);

  @JsonKey(name: 'group_name', defaultValue: '')
  final String? groupName;
  @JsonKey(name: 'group_uuid', defaultValue: '')
  final String? groupUuid;
  static const fromJsonFactory = _$ModelsModelUserStudentFromJson;
  static const toJsonFactory = _$ModelsModelUserStudentToJson;
  Map<String, dynamic> toJson() => _$ModelsModelUserStudentToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelsModelUserStudent &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.groupUuid, groupUuid) ||
                const DeepCollectionEquality()
                    .equals(other.groupUuid, groupUuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(groupUuid) ^
      runtimeType.hashCode;
}

extension $ModelsModelUserStudentExtension on ModelsModelUserStudent {
  ModelsModelUserStudent copyWith({String? groupName, String? groupUuid}) {
    return ModelsModelUserStudent(
        groupName: groupName ?? this.groupName,
        groupUuid: groupUuid ?? this.groupUuid);
  }
}

@JsonSerializable(explicitToJson: true)
class NewsQueryNews {
  NewsQueryNews({
    this.page,
    this.pageSize,
  });

  factory NewsQueryNews.fromJson(Map<String, dynamic> json) =>
      _$NewsQueryNewsFromJson(json);

  @JsonKey(name: 'page', defaultValue: 0)
  final int? page;
  @JsonKey(name: 'page_size', defaultValue: 0)
  final int? pageSize;
  static const fromJsonFactory = _$NewsQueryNewsFromJson;
  static const toJsonFactory = _$NewsQueryNewsToJson;
  Map<String, dynamic> toJson() => _$NewsQueryNewsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewsQueryNews &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      runtimeType.hashCode;
}

extension $NewsQueryNewsExtension on NewsQueryNews {
  NewsQueryNews copyWith({int? page, int? pageSize}) {
    return NewsQueryNews(
        page: page ?? this.page, pageSize: pageSize ?? this.pageSize);
  }
}

@JsonSerializable(explicitToJson: true)
class OldmodelsAction {
  OldmodelsAction({
    this.title,
    this.type,
    this.value,
  });

  factory OldmodelsAction.fromJson(Map<String, dynamic> json) =>
      _$OldmodelsActionFromJson(json);

  @JsonKey(name: 'title', defaultValue: '')
  final String? title;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'value', defaultValue: '')
  final String? value;
  static const fromJsonFactory = _$OldmodelsActionFromJson;
  static const toJsonFactory = _$OldmodelsActionToJson;
  Map<String, dynamic> toJson() => _$OldmodelsActionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OldmodelsAction &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $OldmodelsActionExtension on OldmodelsAction {
  OldmodelsAction copyWith({String? title, String? type, String? value}) {
    return OldmodelsAction(
        title: title ?? this.title,
        type: type ?? this.type,
        value: value ?? this.value);
  }
}

@JsonSerializable(explicitToJson: true)
class OldmodelsNewsFullNew {
  OldmodelsNewsFullNew({
    this.action,
    this.created,
    this.markdown,
    this.previewDescription,
    this.previewImageUrl,
    this.title,
    this.uuid,
    this.views,
  });

  factory OldmodelsNewsFullNew.fromJson(Map<String, dynamic> json) =>
      _$OldmodelsNewsFullNewFromJson(json);

  @JsonKey(name: 'action')
  final OldmodelsAction? action;
  @JsonKey(name: 'created', defaultValue: '')
  final String? created;
  @JsonKey(name: 'markdown', defaultValue: '')
  final String? markdown;
  @JsonKey(name: 'preview_description', defaultValue: '')
  final String? previewDescription;
  @JsonKey(name: 'preview_image_url', defaultValue: '')
  final String? previewImageUrl;
  @JsonKey(name: 'title', defaultValue: '')
  final String? title;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  @JsonKey(name: 'views', defaultValue: 0)
  final int? views;
  static const fromJsonFactory = _$OldmodelsNewsFullNewFromJson;
  static const toJsonFactory = _$OldmodelsNewsFullNewToJson;
  Map<String, dynamic> toJson() => _$OldmodelsNewsFullNewToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OldmodelsNewsFullNew &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.markdown, markdown) ||
                const DeepCollectionEquality()
                    .equals(other.markdown, markdown)) &&
            (identical(other.previewDescription, previewDescription) ||
                const DeepCollectionEquality()
                    .equals(other.previewDescription, previewDescription)) &&
            (identical(other.previewImageUrl, previewImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewImageUrl, previewImageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(markdown) ^
      const DeepCollectionEquality().hash(previewDescription) ^
      const DeepCollectionEquality().hash(previewImageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(views) ^
      runtimeType.hashCode;
}

extension $OldmodelsNewsFullNewExtension on OldmodelsNewsFullNew {
  OldmodelsNewsFullNew copyWith(
      {OldmodelsAction? action,
      String? created,
      String? markdown,
      String? previewDescription,
      String? previewImageUrl,
      String? title,
      String? uuid,
      int? views}) {
    return OldmodelsNewsFullNew(
        action: action ?? this.action,
        created: created ?? this.created,
        markdown: markdown ?? this.markdown,
        previewDescription: previewDescription ?? this.previewDescription,
        previewImageUrl: previewImageUrl ?? this.previewImageUrl,
        title: title ?? this.title,
        uuid: uuid ?? this.uuid,
        views: views ?? this.views);
  }
}

@JsonSerializable(explicitToJson: true)
class OldmodelsNewsItem {
  OldmodelsNewsItem({
    this.created,
    this.previewDescription,
    this.previewImageUrl,
    this.title,
    this.uuid,
    this.views,
  });

  factory OldmodelsNewsItem.fromJson(Map<String, dynamic> json) =>
      _$OldmodelsNewsItemFromJson(json);

  @JsonKey(name: 'created', defaultValue: '')
  final String? created;
  @JsonKey(name: 'preview_description', defaultValue: '')
  final String? previewDescription;
  @JsonKey(name: 'preview_image_url', defaultValue: '')
  final String? previewImageUrl;
  @JsonKey(name: 'title', defaultValue: '')
  final String? title;
  @JsonKey(name: 'uuid', defaultValue: '')
  final String? uuid;
  @JsonKey(name: 'views', defaultValue: 0)
  final int? views;
  static const fromJsonFactory = _$OldmodelsNewsItemFromJson;
  static const toJsonFactory = _$OldmodelsNewsItemToJson;
  Map<String, dynamic> toJson() => _$OldmodelsNewsItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OldmodelsNewsItem &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.previewDescription, previewDescription) ||
                const DeepCollectionEquality()
                    .equals(other.previewDescription, previewDescription)) &&
            (identical(other.previewImageUrl, previewImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.previewImageUrl, previewImageUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(previewDescription) ^
      const DeepCollectionEquality().hash(previewImageUrl) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(views) ^
      runtimeType.hashCode;
}

extension $OldmodelsNewsItemExtension on OldmodelsNewsItem {
  OldmodelsNewsItem copyWith(
      {String? created,
      String? previewDescription,
      String? previewImageUrl,
      String? title,
      String? uuid,
      int? views}) {
    return OldmodelsNewsItem(
        created: created ?? this.created,
        previewDescription: previewDescription ?? this.previewDescription,
        previewImageUrl: previewImageUrl ?? this.previewImageUrl,
        title: title ?? this.title,
        uuid: uuid ?? this.uuid,
        views: views ?? this.views);
  }
}

@JsonSerializable(explicitToJson: true)
class OldmodelsNewsListNew {
  OldmodelsNewsListNew({
    this.items,
    this.total,
  });

  factory OldmodelsNewsListNew.fromJson(Map<String, dynamic> json) =>
      _$OldmodelsNewsListNewFromJson(json);

  @JsonKey(name: 'items', defaultValue: <OldmodelsNewsItem>[])
  final List<OldmodelsNewsItem>? items;
  @JsonKey(name: 'total', defaultValue: 0)
  final int? total;
  static const fromJsonFactory = _$OldmodelsNewsListNewFromJson;
  static const toJsonFactory = _$OldmodelsNewsListNewToJson;
  Map<String, dynamic> toJson() => _$OldmodelsNewsListNewToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OldmodelsNewsListNew &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(total) ^
      runtimeType.hashCode;
}

extension $OldmodelsNewsListNewExtension on OldmodelsNewsListNew {
  OldmodelsNewsListNew copyWith({List<OldmodelsNewsItem>? items, int? total}) {
    return OldmodelsNewsListNew(
        items: items ?? this.items, total: total ?? this.total);
  }
}

@JsonSerializable(explicitToJson: true)
class OldnewsNewsPostKeys {
  OldnewsNewsPostKeys({
    this.page,
    this.pageSize,
  });

  factory OldnewsNewsPostKeys.fromJson(Map<String, dynamic> json) =>
      _$OldnewsNewsPostKeysFromJson(json);

  @JsonKey(name: 'page', defaultValue: 0)
  final int? page;
  @JsonKey(name: 'page_size', defaultValue: 0)
  final int? pageSize;
  static const fromJsonFactory = _$OldnewsNewsPostKeysFromJson;
  static const toJsonFactory = _$OldnewsNewsPostKeysToJson;
  Map<String, dynamic> toJson() => _$OldnewsNewsPostKeysToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OldnewsNewsPostKeys &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageSize) ^
      runtimeType.hashCode;
}

extension $OldnewsNewsPostKeysExtension on OldnewsNewsPostKeys {
  OldnewsNewsPostKeys copyWith({int? page, int? pageSize}) {
    return OldnewsNewsPostKeys(
        page: page ?? this.page, pageSize: pageSize ?? this.pageSize);
  }
}

@JsonSerializable(explicitToJson: true)
class SearchQuerySchedule {
  SearchQuerySchedule({
    this.query,
  });

  factory SearchQuerySchedule.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryScheduleFromJson(json);

  @JsonKey(name: 'query', defaultValue: '')
  final String? query;
  static const fromJsonFactory = _$SearchQueryScheduleFromJson;
  static const toJsonFactory = _$SearchQueryScheduleToJson;
  Map<String, dynamic> toJson() => _$SearchQueryScheduleToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchQuerySchedule &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(query) ^ runtimeType.hashCode;
}

extension $SearchQueryScheduleExtension on SearchQuerySchedule {
  SearchQuerySchedule copyWith({String? query}) {
    return SearchQuerySchedule(query: query ?? this.query);
  }
}

@JsonSerializable(explicitToJson: true)
class SearchQueryUnit {
  SearchQueryUnit({
    this.parentUuid,
    this.query,
    this.type,
  });

  factory SearchQueryUnit.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryUnitFromJson(json);

  @JsonKey(name: 'parent_uuid', defaultValue: '')
  final String? parentUuid;
  @JsonKey(name: 'query', defaultValue: '')
  final String? query;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  static const fromJsonFactory = _$SearchQueryUnitFromJson;
  static const toJsonFactory = _$SearchQueryUnitToJson;
  Map<String, dynamic> toJson() => _$SearchQueryUnitToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchQueryUnit &&
            (identical(other.parentUuid, parentUuid) ||
                const DeepCollectionEquality()
                    .equals(other.parentUuid, parentUuid)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(parentUuid) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $SearchQueryUnitExtension on SearchQueryUnit {
  SearchQueryUnit copyWith({String? parentUuid, String? query, String? type}) {
    return SearchQueryUnit(
        parentUuid: parentUuid ?? this.parentUuid,
        query: query ?? this.query,
        type: type ?? this.type);
  }
}

@JsonSerializable(explicitToJson: true)
class UserInfoResp {
  UserInfoResp({
    this.user,
  });

  factory UserInfoResp.fromJson(Map<String, dynamic> json) =>
      _$UserInfoRespFromJson(json);

  @JsonKey(name: 'user')
  final ModelsModelUser? user;
  static const fromJsonFactory = _$UserInfoRespFromJson;
  static const toJsonFactory = _$UserInfoRespToJson;
  Map<String, dynamic> toJson() => _$UserInfoRespToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfoResp &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $UserInfoRespExtension on UserInfoResp {
  UserInfoResp copyWith({ModelsModelUser? user}) {
    return UserInfoResp(user: user ?? this.user);
  }
}

@JsonSerializable(explicitToJson: true)
class UserTokenBody {
  UserTokenBody({
    this.appVersion,
    this.firebaseToken,
    this.platform,
    this.scheduleUuid,
  });

  factory UserTokenBody.fromJson(Map<String, dynamic> json) =>
      _$UserTokenBodyFromJson(json);

  @JsonKey(name: 'app_version', defaultValue: 0)
  final int? appVersion;
  @JsonKey(name: 'firebase_token', defaultValue: '')
  final String? firebaseToken;
  @JsonKey(name: 'platform', defaultValue: '')
  final String? platform;
  @JsonKey(name: 'schedule_uuid', defaultValue: '')
  final String? scheduleUuid;
  static const fromJsonFactory = _$UserTokenBodyFromJson;
  static const toJsonFactory = _$UserTokenBodyToJson;
  Map<String, dynamic> toJson() => _$UserTokenBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserTokenBody &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.firebaseToken, firebaseToken) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseToken, firebaseToken)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.scheduleUuid, scheduleUuid) ||
                const DeepCollectionEquality()
                    .equals(other.scheduleUuid, scheduleUuid)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(firebaseToken) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(scheduleUuid) ^
      runtimeType.hashCode;
}

extension $UserTokenBodyExtension on UserTokenBody {
  UserTokenBody copyWith(
      {int? appVersion,
      String? firebaseToken,
      String? platform,
      String? scheduleUuid}) {
    return UserTokenBody(
        appVersion: appVersion ?? this.appVersion,
        firebaseToken: firebaseToken ?? this.firebaseToken,
        platform: platform ?? this.platform,
        scheduleUuid: scheduleUuid ?? this.scheduleUuid);
  }
}

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
