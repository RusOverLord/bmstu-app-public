// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_service.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppTokenBody _$AppTokenBodyFromJson(Map<String, dynamic> json) => AppTokenBody(
      appVersion: json['app_version'] as int? ?? 0,
      firebaseToken: json['firebase_token'] as String? ?? '',
      platform: json['platform'] as String? ?? '',
      scheduleUuid: json['schedule_uuid'] as String? ?? '',
    );

Map<String, dynamic> _$AppTokenBodyToJson(AppTokenBody instance) =>
    <String, dynamic>{
      'app_version': instance.appVersion,
      'firebase_token': instance.firebaseToken,
      'platform': instance.platform,
      'schedule_uuid': instance.scheduleUuid,
    };

ComdsModelError _$ComdsModelErrorFromJson(Map<String, dynamic> json) =>
    ComdsModelError(
      description: json['description'] as String? ?? '',
      error: json['error'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$ComdsModelErrorToJson(ComdsModelError instance) =>
    <String, dynamic>{
      'description': instance.description,
      'error': instance.error,
      'type': instance.type,
    };

CovidCrtCovidCrtStatusResp _$CovidCrtCovidCrtStatusRespFromJson(
        Map<String, dynamic> json) =>
    CovidCrtCovidCrtStatusResp(
      expiredAt: json['expired_at'] as String? ?? '',
      issuedAt: json['issued_at'] as String? ?? '',
      qrUrl: json['qr_url'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$CovidCrtCovidCrtStatusRespToJson(
        CovidCrtCovidCrtStatusResp instance) =>
    <String, dynamic>{
      'expired_at': instance.expiredAt,
      'issued_at': instance.issuedAt,
      'qr_url': instance.qrUrl,
      'status': instance.status,
    };

DsSchedule _$DsScheduleFromJson(Map<String, dynamic> json) => DsSchedule(
      etag: json['etag'] as String? ?? '',
      group: json['group'] == null
          ? null
          : ModelsModelGroup.fromJson(json['group'] as Map<String, dynamic>),
      isNumeratorFirst: json['is_numerator_first'] as bool? ?? false,
      lessons: (json['lessons'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsModelScheduleLesson.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      semesterEnd: json['semester_end'] as String? ?? '',
      semesterStart: json['semester_start'] as String? ?? '',
      teacher: json['teacher'] == null
          ? null
          : ModelsModelTeacher.fromJson(
              json['teacher'] as Map<String, dynamic>),
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$DsScheduleToJson(DsSchedule instance) =>
    <String, dynamic>{
      'etag': instance.etag,
      'group': instance.group?.toJson(),
      'is_numerator_first': instance.isNumeratorFirst,
      'lessons': instance.lessons?.map((e) => e.toJson()).toList(),
      'semester_end': instance.semesterEnd,
      'semester_start': instance.semesterStart,
      'teacher': instance.teacher?.toJson(),
      'type': instance.type,
    };

InternalAppApiV1BaumanIdGetBaumanIDResp
    _$InternalAppApiV1BaumanIdGetBaumanIDRespFromJson(
            Map<String, dynamic> json) =>
        InternalAppApiV1BaumanIdGetBaumanIDResp(
          accessIsAllowed: json['access_is_allowed'] as bool? ?? false,
          qrString: json['qr_string'] as String? ?? '',
        );

Map<String, dynamic> _$InternalAppApiV1BaumanIdGetBaumanIDRespToJson(
        InternalAppApiV1BaumanIdGetBaumanIDResp instance) =>
    <String, dynamic>{
      'access_is_allowed': instance.accessIsAllowed,
      'qr_string': instance.qrString,
    };

InternalAppApiV2BaumanIdGetBaumanIDResp
    _$InternalAppApiV2BaumanIdGetBaumanIDRespFromJson(
            Map<String, dynamic> json) =>
        InternalAppApiV2BaumanIdGetBaumanIDResp(
          accessIsAllowed: json['access_is_allowed'] as bool? ?? false,
          expiredAt: json['expired_at'] as String? ?? '',
          qrString: json['qr_string'] as String? ?? '',
        );

Map<String, dynamic> _$InternalAppApiV2BaumanIdGetBaumanIDRespToJson(
        InternalAppApiV2BaumanIdGetBaumanIDResp instance) =>
    <String, dynamic>{
      'access_is_allowed': instance.accessIsAllowed,
      'expired_at': instance.expiredAt,
      'qr_string': instance.qrString,
    };

ModelsModelError _$ModelsModelErrorFromJson(Map<String, dynamic> json) =>
    ModelsModelError(
      description: json['description'] as String? ?? '',
      error: json['error'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelErrorToJson(ModelsModelError instance) =>
    <String, dynamic>{
      'description': instance.description,
      'error': instance.error,
      'type': instance.type,
    };

ModelsModelGroup _$ModelsModelGroupFromJson(Map<String, dynamic> json) =>
    ModelsModelGroup(
      name: json['name'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelGroupToJson(ModelsModelGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };

ModelsModelNews _$ModelsModelNewsFromJson(Map<String, dynamic> json) =>
    ModelsModelNews(
      action: json['action'] == null
          ? null
          : ModelsModelNewsAction.fromJson(
              json['action'] as Map<String, dynamic>),
      author: json['author'] as String? ?? '',
      created: json['created'] as String? ?? '',
      deleted: json['deleted'] as String? ?? '',
      detailDescription: json['detail_description'] as String? ?? '',
      detailPictureUrl: json['detail_picture_url'] as String? ?? '',
      modified: json['modified'] as String? ?? '',
      previewDescription: json['preview_description'] as String? ?? '',
      previewPictureUrl: json['preview_picture_url'] as String? ?? '',
      published: json['published'] as String? ?? '',
      title: json['title'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
      views: json['views'] as int? ?? 0,
    );

Map<String, dynamic> _$ModelsModelNewsToJson(ModelsModelNews instance) =>
    <String, dynamic>{
      'action': instance.action?.toJson(),
      'author': instance.author,
      'created': instance.created,
      'deleted': instance.deleted,
      'detail_description': instance.detailDescription,
      'detail_picture_url': instance.detailPictureUrl,
      'modified': instance.modified,
      'preview_description': instance.previewDescription,
      'preview_picture_url': instance.previewPictureUrl,
      'published': instance.published,
      'title': instance.title,
      'uuid': instance.uuid,
      'views': instance.views,
    };

ModelsModelNewsAction _$ModelsModelNewsActionFromJson(
        Map<String, dynamic> json) =>
    ModelsModelNewsAction(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelNewsActionToJson(
        ModelsModelNewsAction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

ModelsModelNewsList _$ModelsModelNewsListFromJson(Map<String, dynamic> json) =>
    ModelsModelNewsList(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ModelsModelNews.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$ModelsModelNewsListToJson(
        ModelsModelNewsList instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsModelScheduleLesson _$ModelsModelScheduleLessonFromJson(
        Map<String, dynamic> json) =>
    ModelsModelScheduleLesson(
      cabinet: json['cabinet'] as String? ?? '',
      day: json['day'] as int? ?? 0,
      endAt: json['end_at'] as String? ?? '',
      groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => ModelsModelGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isNumerator: json['is_numerator'] as bool? ?? false,
      name: json['name'] as String? ?? '',
      startAt: json['start_at'] as String? ?? '',
      teachers: (json['teachers'] as List<dynamic>?)
              ?.map(
                  (e) => ModelsModelTeacher.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      type: json['type'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelScheduleLessonToJson(
        ModelsModelScheduleLesson instance) =>
    <String, dynamic>{
      'cabinet': instance.cabinet,
      'day': instance.day,
      'end_at': instance.endAt,
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'is_numerator': instance.isNumerator,
      'name': instance.name,
      'start_at': instance.startAt,
      'teachers': instance.teachers?.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'uuid': instance.uuid,
    };

ModelsModelSearchUnit _$ModelsModelSearchUnitFromJson(
        Map<String, dynamic> json) =>
    ModelsModelSearchUnit(
      additional: json['additional'] as String? ?? '',
      caption: json['caption'] as String? ?? '',
      type: json['type'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelSearchUnitToJson(
        ModelsModelSearchUnit instance) =>
    <String, dynamic>{
      'additional': instance.additional,
      'caption': instance.caption,
      'type': instance.type,
      'uuid': instance.uuid,
    };

ModelsModelSearchUnitList _$ModelsModelSearchUnitListFromJson(
        Map<String, dynamic> json) =>
    ModelsModelSearchUnitList(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  ModelsModelSearchUnit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$ModelsModelSearchUnitListToJson(
        ModelsModelSearchUnitList instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

ModelsModelTeacher _$ModelsModelTeacherFromJson(Map<String, dynamic> json) =>
    ModelsModelTeacher(
      name: json['name'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelTeacherToJson(ModelsModelTeacher instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };

ModelsModelUser _$ModelsModelUserFromJson(Map<String, dynamic> json) =>
    ModelsModelUser(
      employee: json['employee'] == null
          ? null
          : ModelsModelUserEmployee.fromJson(
              json['employee'] as Map<String, dynamic>),
      login: json['login'] as String? ?? '',
      mail: json['mail'] as String? ?? '',
      name: json['name'] as String? ?? '',
      student: json['student'] == null
          ? null
          : ModelsModelUserStudent.fromJson(
              json['student'] as Map<String, dynamic>),
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelUserToJson(ModelsModelUser instance) =>
    <String, dynamic>{
      'employee': instance.employee?.toJson(),
      'login': instance.login,
      'mail': instance.mail,
      'name': instance.name,
      'student': instance.student?.toJson(),
      'uuid': instance.uuid,
    };

ModelsModelUserEmployee _$ModelsModelUserEmployeeFromJson(
        Map<String, dynamic> json) =>
    ModelsModelUserEmployee(
      department: json['department'] as String? ?? '',
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelUserEmployeeToJson(
        ModelsModelUserEmployee instance) =>
    <String, dynamic>{
      'department': instance.department,
      'title': instance.title,
    };

ModelsModelUserStudent _$ModelsModelUserStudentFromJson(
        Map<String, dynamic> json) =>
    ModelsModelUserStudent(
      groupName: json['group_name'] as String? ?? '',
      groupUuid: json['group_uuid'] as String? ?? '',
    );

Map<String, dynamic> _$ModelsModelUserStudentToJson(
        ModelsModelUserStudent instance) =>
    <String, dynamic>{
      'group_name': instance.groupName,
      'group_uuid': instance.groupUuid,
    };

NewsQueryNews _$NewsQueryNewsFromJson(Map<String, dynamic> json) =>
    NewsQueryNews(
      page: json['page'] as int? ?? 0,
      pageSize: json['page_size'] as int? ?? 0,
    );

Map<String, dynamic> _$NewsQueryNewsToJson(NewsQueryNews instance) =>
    <String, dynamic>{
      'page': instance.page,
      'page_size': instance.pageSize,
    };

OldmodelsAction _$OldmodelsActionFromJson(Map<String, dynamic> json) =>
    OldmodelsAction(
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$OldmodelsActionToJson(OldmodelsAction instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'value': instance.value,
    };

OldmodelsNewsFullNew _$OldmodelsNewsFullNewFromJson(
        Map<String, dynamic> json) =>
    OldmodelsNewsFullNew(
      action: json['action'] == null
          ? null
          : OldmodelsAction.fromJson(json['action'] as Map<String, dynamic>),
      created: json['created'] as String? ?? '',
      markdown: json['markdown'] as String? ?? '',
      previewDescription: json['preview_description'] as String? ?? '',
      previewImageUrl: json['preview_image_url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
      views: json['views'] as int? ?? 0,
    );

Map<String, dynamic> _$OldmodelsNewsFullNewToJson(
        OldmodelsNewsFullNew instance) =>
    <String, dynamic>{
      'action': instance.action?.toJson(),
      'created': instance.created,
      'markdown': instance.markdown,
      'preview_description': instance.previewDescription,
      'preview_image_url': instance.previewImageUrl,
      'title': instance.title,
      'uuid': instance.uuid,
      'views': instance.views,
    };

OldmodelsNewsItem _$OldmodelsNewsItemFromJson(Map<String, dynamic> json) =>
    OldmodelsNewsItem(
      created: json['created'] as String? ?? '',
      previewDescription: json['preview_description'] as String? ?? '',
      previewImageUrl: json['preview_image_url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      uuid: json['uuid'] as String? ?? '',
      views: json['views'] as int? ?? 0,
    );

Map<String, dynamic> _$OldmodelsNewsItemToJson(OldmodelsNewsItem instance) =>
    <String, dynamic>{
      'created': instance.created,
      'preview_description': instance.previewDescription,
      'preview_image_url': instance.previewImageUrl,
      'title': instance.title,
      'uuid': instance.uuid,
      'views': instance.views,
    };

OldmodelsNewsListNew _$OldmodelsNewsListNewFromJson(
        Map<String, dynamic> json) =>
    OldmodelsNewsListNew(
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => OldmodelsNewsItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$OldmodelsNewsListNewToJson(
        OldmodelsNewsListNew instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };

OldnewsNewsPostKeys _$OldnewsNewsPostKeysFromJson(Map<String, dynamic> json) =>
    OldnewsNewsPostKeys(
      page: json['page'] as int? ?? 0,
      pageSize: json['page_size'] as int? ?? 0,
    );

Map<String, dynamic> _$OldnewsNewsPostKeysToJson(
        OldnewsNewsPostKeys instance) =>
    <String, dynamic>{
      'page': instance.page,
      'page_size': instance.pageSize,
    };

SearchQuerySchedule _$SearchQueryScheduleFromJson(Map<String, dynamic> json) =>
    SearchQuerySchedule(
      query: json['query'] as String? ?? '',
    );

Map<String, dynamic> _$SearchQueryScheduleToJson(
        SearchQuerySchedule instance) =>
    <String, dynamic>{
      'query': instance.query,
    };

SearchQueryUnit _$SearchQueryUnitFromJson(Map<String, dynamic> json) =>
    SearchQueryUnit(
      parentUuid: json['parent_uuid'] as String? ?? '',
      query: json['query'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$SearchQueryUnitToJson(SearchQueryUnit instance) =>
    <String, dynamic>{
      'parent_uuid': instance.parentUuid,
      'query': instance.query,
      'type': instance.type,
    };

UserInfoResp _$UserInfoRespFromJson(Map<String, dynamic> json) => UserInfoResp(
      user: json['user'] == null
          ? null
          : ModelsModelUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInfoRespToJson(UserInfoResp instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

UserTokenBody _$UserTokenBodyFromJson(Map<String, dynamic> json) =>
    UserTokenBody(
      appVersion: json['app_version'] as int? ?? 0,
      firebaseToken: json['firebase_token'] as String? ?? '',
      platform: json['platform'] as String? ?? '',
      scheduleUuid: json['schedule_uuid'] as String? ?? '',
    );

Map<String, dynamic> _$UserTokenBodyToJson(UserTokenBody instance) =>
    <String, dynamic>{
      'app_version': instance.appVersion,
      'firebase_token': instance.firebaseToken,
      'platform': instance.platform,
      'schedule_uuid': instance.scheduleUuid,
    };
