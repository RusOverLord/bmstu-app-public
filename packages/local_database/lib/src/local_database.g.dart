// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class ScheduleSql extends DataClass implements Insertable<ScheduleSql> {
  final String uuid;
  final bool? isFavorite;
  final WhomTypeSql? whomType;
  final bool? isNumeratorFirst;
  final DateTime? semesterStart;
  final DateTime? semesterEnd;
  final String? etag;
  ScheduleSql(
      {required this.uuid,
      this.isFavorite,
      this.whomType,
      this.isNumeratorFirst,
      this.semesterStart,
      this.semesterEnd,
      this.etag});
  factory ScheduleSql.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ScheduleSql(
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid'])!,
      isFavorite: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_favorite']),
      whomType: $ScheduleTableTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}whom_type'])),
      isNumeratorFirst: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_numerator_first']),
      semesterStart: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}semester_start']),
      semesterEnd: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}semester_end']),
      etag: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}etag']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    if (!nullToAbsent || isFavorite != null) {
      map['is_favorite'] = Variable<bool?>(isFavorite);
    }
    if (!nullToAbsent || whomType != null) {
      final converter = $ScheduleTableTable.$converter0;
      map['whom_type'] = Variable<String?>(converter.mapToSql(whomType));
    }
    if (!nullToAbsent || isNumeratorFirst != null) {
      map['is_numerator_first'] = Variable<bool?>(isNumeratorFirst);
    }
    if (!nullToAbsent || semesterStart != null) {
      map['semester_start'] = Variable<DateTime?>(semesterStart);
    }
    if (!nullToAbsent || semesterEnd != null) {
      map['semester_end'] = Variable<DateTime?>(semesterEnd);
    }
    if (!nullToAbsent || etag != null) {
      map['etag'] = Variable<String?>(etag);
    }
    return map;
  }

  ScheduleTableCompanion toCompanion(bool nullToAbsent) {
    return ScheduleTableCompanion(
      uuid: Value(uuid),
      isFavorite: isFavorite == null && nullToAbsent
          ? const Value.absent()
          : Value(isFavorite),
      whomType: whomType == null && nullToAbsent
          ? const Value.absent()
          : Value(whomType),
      isNumeratorFirst: isNumeratorFirst == null && nullToAbsent
          ? const Value.absent()
          : Value(isNumeratorFirst),
      semesterStart: semesterStart == null && nullToAbsent
          ? const Value.absent()
          : Value(semesterStart),
      semesterEnd: semesterEnd == null && nullToAbsent
          ? const Value.absent()
          : Value(semesterEnd),
      etag: etag == null && nullToAbsent ? const Value.absent() : Value(etag),
    );
  }

  factory ScheduleSql.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScheduleSql(
      uuid: serializer.fromJson<String>(json['uuid']),
      isFavorite: serializer.fromJson<bool?>(json['isFavorite']),
      whomType: serializer.fromJson<WhomTypeSql?>(json['whomType']),
      isNumeratorFirst: serializer.fromJson<bool?>(json['isNumeratorFirst']),
      semesterStart: serializer.fromJson<DateTime?>(json['semesterStart']),
      semesterEnd: serializer.fromJson<DateTime?>(json['semesterEnd']),
      etag: serializer.fromJson<String?>(json['etag']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'isFavorite': serializer.toJson<bool?>(isFavorite),
      'whomType': serializer.toJson<WhomTypeSql?>(whomType),
      'isNumeratorFirst': serializer.toJson<bool?>(isNumeratorFirst),
      'semesterStart': serializer.toJson<DateTime?>(semesterStart),
      'semesterEnd': serializer.toJson<DateTime?>(semesterEnd),
      'etag': serializer.toJson<String?>(etag),
    };
  }

  ScheduleSql copyWith(
          {String? uuid,
          bool? isFavorite,
          WhomTypeSql? whomType,
          bool? isNumeratorFirst,
          DateTime? semesterStart,
          DateTime? semesterEnd,
          String? etag}) =>
      ScheduleSql(
        uuid: uuid ?? this.uuid,
        isFavorite: isFavorite ?? this.isFavorite,
        whomType: whomType ?? this.whomType,
        isNumeratorFirst: isNumeratorFirst ?? this.isNumeratorFirst,
        semesterStart: semesterStart ?? this.semesterStart,
        semesterEnd: semesterEnd ?? this.semesterEnd,
        etag: etag ?? this.etag,
      );
  @override
  String toString() {
    return (StringBuffer('ScheduleSql(')
          ..write('uuid: $uuid, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('whomType: $whomType, ')
          ..write('isNumeratorFirst: $isNumeratorFirst, ')
          ..write('semesterStart: $semesterStart, ')
          ..write('semesterEnd: $semesterEnd, ')
          ..write('etag: $etag')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, isFavorite, whomType, isNumeratorFirst,
      semesterStart, semesterEnd, etag);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScheduleSql &&
          other.uuid == this.uuid &&
          other.isFavorite == this.isFavorite &&
          other.whomType == this.whomType &&
          other.isNumeratorFirst == this.isNumeratorFirst &&
          other.semesterStart == this.semesterStart &&
          other.semesterEnd == this.semesterEnd &&
          other.etag == this.etag);
}

class ScheduleTableCompanion extends UpdateCompanion<ScheduleSql> {
  final Value<String> uuid;
  final Value<bool?> isFavorite;
  final Value<WhomTypeSql?> whomType;
  final Value<bool?> isNumeratorFirst;
  final Value<DateTime?> semesterStart;
  final Value<DateTime?> semesterEnd;
  final Value<String?> etag;
  const ScheduleTableCompanion({
    this.uuid = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.whomType = const Value.absent(),
    this.isNumeratorFirst = const Value.absent(),
    this.semesterStart = const Value.absent(),
    this.semesterEnd = const Value.absent(),
    this.etag = const Value.absent(),
  });
  ScheduleTableCompanion.insert({
    required String uuid,
    this.isFavorite = const Value.absent(),
    this.whomType = const Value.absent(),
    this.isNumeratorFirst = const Value.absent(),
    this.semesterStart = const Value.absent(),
    this.semesterEnd = const Value.absent(),
    this.etag = const Value.absent(),
  }) : uuid = Value(uuid);
  static Insertable<ScheduleSql> custom({
    Expression<String>? uuid,
    Expression<bool?>? isFavorite,
    Expression<WhomTypeSql?>? whomType,
    Expression<bool?>? isNumeratorFirst,
    Expression<DateTime?>? semesterStart,
    Expression<DateTime?>? semesterEnd,
    Expression<String?>? etag,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (whomType != null) 'whom_type': whomType,
      if (isNumeratorFirst != null) 'is_numerator_first': isNumeratorFirst,
      if (semesterStart != null) 'semester_start': semesterStart,
      if (semesterEnd != null) 'semester_end': semesterEnd,
      if (etag != null) 'etag': etag,
    });
  }

  ScheduleTableCompanion copyWith(
      {Value<String>? uuid,
      Value<bool?>? isFavorite,
      Value<WhomTypeSql?>? whomType,
      Value<bool?>? isNumeratorFirst,
      Value<DateTime?>? semesterStart,
      Value<DateTime?>? semesterEnd,
      Value<String?>? etag}) {
    return ScheduleTableCompanion(
      uuid: uuid ?? this.uuid,
      isFavorite: isFavorite ?? this.isFavorite,
      whomType: whomType ?? this.whomType,
      isNumeratorFirst: isNumeratorFirst ?? this.isNumeratorFirst,
      semesterStart: semesterStart ?? this.semesterStart,
      semesterEnd: semesterEnd ?? this.semesterEnd,
      etag: etag ?? this.etag,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool?>(isFavorite.value);
    }
    if (whomType.present) {
      final converter = $ScheduleTableTable.$converter0;
      map['whom_type'] = Variable<String?>(converter.mapToSql(whomType.value));
    }
    if (isNumeratorFirst.present) {
      map['is_numerator_first'] = Variable<bool?>(isNumeratorFirst.value);
    }
    if (semesterStart.present) {
      map['semester_start'] = Variable<DateTime?>(semesterStart.value);
    }
    if (semesterEnd.present) {
      map['semester_end'] = Variable<DateTime?>(semesterEnd.value);
    }
    if (etag.present) {
      map['etag'] = Variable<String?>(etag.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScheduleTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('whomType: $whomType, ')
          ..write('isNumeratorFirst: $isNumeratorFirst, ')
          ..write('semesterStart: $semesterStart, ')
          ..write('semesterEnd: $semesterEnd, ')
          ..write('etag: $etag')
          ..write(')'))
        .toString();
  }
}

class $ScheduleTableTable extends ScheduleTable
    with TableInfo<$ScheduleTableTable, ScheduleSql> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScheduleTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isFavoriteMeta = const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool?> isFavorite = GeneratedColumn<bool?>(
      'is_favorite', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_favorite IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _whomTypeMeta = const VerificationMeta('whomType');
  @override
  late final GeneratedColumnWithTypeConverter<WhomTypeSql, String?> whomType =
      GeneratedColumn<String?>('whom_type', aliasedName, true,
              type: const StringType(), requiredDuringInsert: false)
          .withConverter<WhomTypeSql>($ScheduleTableTable.$converter0);
  final VerificationMeta _isNumeratorFirstMeta =
      const VerificationMeta('isNumeratorFirst');
  @override
  late final GeneratedColumn<bool?> isNumeratorFirst = GeneratedColumn<bool?>(
      'is_numerator_first', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_numerator_first IN (0, 1))');
  final VerificationMeta _semesterStartMeta =
      const VerificationMeta('semesterStart');
  @override
  late final GeneratedColumn<DateTime?> semesterStart =
      GeneratedColumn<DateTime?>('semester_start', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _semesterEndMeta =
      const VerificationMeta('semesterEnd');
  @override
  late final GeneratedColumn<DateTime?> semesterEnd =
      GeneratedColumn<DateTime?>('semester_end', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _etagMeta = const VerificationMeta('etag');
  @override
  late final GeneratedColumn<String?> etag = GeneratedColumn<String?>(
      'etag', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        uuid,
        isFavorite,
        whomType,
        isNumeratorFirst,
        semesterStart,
        semesterEnd,
        etag
      ];
  @override
  String get aliasedName => _alias ?? 'schedule_table';
  @override
  String get actualTableName => 'schedule_table';
  @override
  VerificationContext validateIntegrity(Insertable<ScheduleSql> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    context.handle(_whomTypeMeta, const VerificationResult.success());
    if (data.containsKey('is_numerator_first')) {
      context.handle(
          _isNumeratorFirstMeta,
          isNumeratorFirst.isAcceptableOrUnknown(
              data['is_numerator_first']!, _isNumeratorFirstMeta));
    }
    if (data.containsKey('semester_start')) {
      context.handle(
          _semesterStartMeta,
          semesterStart.isAcceptableOrUnknown(
              data['semester_start']!, _semesterStartMeta));
    }
    if (data.containsKey('semester_end')) {
      context.handle(
          _semesterEndMeta,
          semesterEnd.isAcceptableOrUnknown(
              data['semester_end']!, _semesterEndMeta));
    }
    if (data.containsKey('etag')) {
      context.handle(
          _etagMeta, etag.isAcceptableOrUnknown(data['etag']!, _etagMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  ScheduleSql map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ScheduleSql.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ScheduleTableTable createAlias(String alias) {
    return $ScheduleTableTable(attachedDatabase, alias);
  }

  static TypeConverter<WhomTypeSql, String> $converter0 =
      const WhomTypeMoorConverter();
}

class LessonSql extends DataClass implements Insertable<LessonSql> {
  final String uuid;
  final String scheduleUuid;
  final String type;
  final bool isNumerator;
  final int dayNumber;
  final String name;
  final String cabinet;
  final DateTime startAt;
  final DateTime endAt;
  LessonSql(
      {required this.uuid,
      required this.scheduleUuid,
      required this.type,
      required this.isNumerator,
      required this.dayNumber,
      required this.name,
      required this.cabinet,
      required this.startAt,
      required this.endAt});
  factory LessonSql.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LessonSql(
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid'])!,
      scheduleUuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}schedule_uuid'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      isNumerator: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_numerator'])!,
      dayNumber: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}day_number'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      cabinet: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cabinet'])!,
      startAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_at'])!,
      endAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['schedule_uuid'] = Variable<String>(scheduleUuid);
    map['type'] = Variable<String>(type);
    map['is_numerator'] = Variable<bool>(isNumerator);
    map['day_number'] = Variable<int>(dayNumber);
    map['name'] = Variable<String>(name);
    map['cabinet'] = Variable<String>(cabinet);
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    return map;
  }

  LessonTableCompanion toCompanion(bool nullToAbsent) {
    return LessonTableCompanion(
      uuid: Value(uuid),
      scheduleUuid: Value(scheduleUuid),
      type: Value(type),
      isNumerator: Value(isNumerator),
      dayNumber: Value(dayNumber),
      name: Value(name),
      cabinet: Value(cabinet),
      startAt: Value(startAt),
      endAt: Value(endAt),
    );
  }

  factory LessonSql.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonSql(
      uuid: serializer.fromJson<String>(json['uuid']),
      scheduleUuid: serializer.fromJson<String>(json['scheduleUuid']),
      type: serializer.fromJson<String>(json['type']),
      isNumerator: serializer.fromJson<bool>(json['isNumerator']),
      dayNumber: serializer.fromJson<int>(json['dayNumber']),
      name: serializer.fromJson<String>(json['name']),
      cabinet: serializer.fromJson<String>(json['cabinet']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'scheduleUuid': serializer.toJson<String>(scheduleUuid),
      'type': serializer.toJson<String>(type),
      'isNumerator': serializer.toJson<bool>(isNumerator),
      'dayNumber': serializer.toJson<int>(dayNumber),
      'name': serializer.toJson<String>(name),
      'cabinet': serializer.toJson<String>(cabinet),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
    };
  }

  LessonSql copyWith(
          {String? uuid,
          String? scheduleUuid,
          String? type,
          bool? isNumerator,
          int? dayNumber,
          String? name,
          String? cabinet,
          DateTime? startAt,
          DateTime? endAt}) =>
      LessonSql(
        uuid: uuid ?? this.uuid,
        scheduleUuid: scheduleUuid ?? this.scheduleUuid,
        type: type ?? this.type,
        isNumerator: isNumerator ?? this.isNumerator,
        dayNumber: dayNumber ?? this.dayNumber,
        name: name ?? this.name,
        cabinet: cabinet ?? this.cabinet,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
      );
  @override
  String toString() {
    return (StringBuffer('LessonSql(')
          ..write('uuid: $uuid, ')
          ..write('scheduleUuid: $scheduleUuid, ')
          ..write('type: $type, ')
          ..write('isNumerator: $isNumerator, ')
          ..write('dayNumber: $dayNumber, ')
          ..write('name: $name, ')
          ..write('cabinet: $cabinet, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, scheduleUuid, type, isNumerator,
      dayNumber, name, cabinet, startAt, endAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LessonSql &&
          other.uuid == this.uuid &&
          other.scheduleUuid == this.scheduleUuid &&
          other.type == this.type &&
          other.isNumerator == this.isNumerator &&
          other.dayNumber == this.dayNumber &&
          other.name == this.name &&
          other.cabinet == this.cabinet &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt);
}

class LessonTableCompanion extends UpdateCompanion<LessonSql> {
  final Value<String> uuid;
  final Value<String> scheduleUuid;
  final Value<String> type;
  final Value<bool> isNumerator;
  final Value<int> dayNumber;
  final Value<String> name;
  final Value<String> cabinet;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  const LessonTableCompanion({
    this.uuid = const Value.absent(),
    this.scheduleUuid = const Value.absent(),
    this.type = const Value.absent(),
    this.isNumerator = const Value.absent(),
    this.dayNumber = const Value.absent(),
    this.name = const Value.absent(),
    this.cabinet = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
  });
  LessonTableCompanion.insert({
    required String uuid,
    required String scheduleUuid,
    required String type,
    required bool isNumerator,
    required int dayNumber,
    required String name,
    required String cabinet,
    required DateTime startAt,
    required DateTime endAt,
  })  : uuid = Value(uuid),
        scheduleUuid = Value(scheduleUuid),
        type = Value(type),
        isNumerator = Value(isNumerator),
        dayNumber = Value(dayNumber),
        name = Value(name),
        cabinet = Value(cabinet),
        startAt = Value(startAt),
        endAt = Value(endAt);
  static Insertable<LessonSql> custom({
    Expression<String>? uuid,
    Expression<String>? scheduleUuid,
    Expression<String>? type,
    Expression<bool>? isNumerator,
    Expression<int>? dayNumber,
    Expression<String>? name,
    Expression<String>? cabinet,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (scheduleUuid != null) 'schedule_uuid': scheduleUuid,
      if (type != null) 'type': type,
      if (isNumerator != null) 'is_numerator': isNumerator,
      if (dayNumber != null) 'day_number': dayNumber,
      if (name != null) 'name': name,
      if (cabinet != null) 'cabinet': cabinet,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
    });
  }

  LessonTableCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? scheduleUuid,
      Value<String>? type,
      Value<bool>? isNumerator,
      Value<int>? dayNumber,
      Value<String>? name,
      Value<String>? cabinet,
      Value<DateTime>? startAt,
      Value<DateTime>? endAt}) {
    return LessonTableCompanion(
      uuid: uuid ?? this.uuid,
      scheduleUuid: scheduleUuid ?? this.scheduleUuid,
      type: type ?? this.type,
      isNumerator: isNumerator ?? this.isNumerator,
      dayNumber: dayNumber ?? this.dayNumber,
      name: name ?? this.name,
      cabinet: cabinet ?? this.cabinet,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (scheduleUuid.present) {
      map['schedule_uuid'] = Variable<String>(scheduleUuid.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (isNumerator.present) {
      map['is_numerator'] = Variable<bool>(isNumerator.value);
    }
    if (dayNumber.present) {
      map['day_number'] = Variable<int>(dayNumber.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (cabinet.present) {
      map['cabinet'] = Variable<String>(cabinet.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LessonTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('scheduleUuid: $scheduleUuid, ')
          ..write('type: $type, ')
          ..write('isNumerator: $isNumerator, ')
          ..write('dayNumber: $dayNumber, ')
          ..write('name: $name, ')
          ..write('cabinet: $cabinet, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt')
          ..write(')'))
        .toString();
  }
}

class $LessonTableTable extends LessonTable
    with TableInfo<$LessonTableTable, LessonSql> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _scheduleUuidMeta =
      const VerificationMeta('scheduleUuid');
  @override
  late final GeneratedColumn<String?> scheduleUuid = GeneratedColumn<String?>(
      'schedule_uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isNumeratorMeta =
      const VerificationMeta('isNumerator');
  @override
  late final GeneratedColumn<bool?> isNumerator = GeneratedColumn<bool?>(
      'is_numerator', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_numerator IN (0, 1))');
  final VerificationMeta _dayNumberMeta = const VerificationMeta('dayNumber');
  @override
  late final GeneratedColumn<int?> dayNumber = GeneratedColumn<int?>(
      'day_number', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _cabinetMeta = const VerificationMeta('cabinet');
  @override
  late final GeneratedColumn<String?> cabinet = GeneratedColumn<String?>(
      'cabinet', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _startAtMeta = const VerificationMeta('startAt');
  @override
  late final GeneratedColumn<DateTime?> startAt = GeneratedColumn<DateTime?>(
      'start_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime?> endAt = GeneratedColumn<DateTime?>(
      'end_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        uuid,
        scheduleUuid,
        type,
        isNumerator,
        dayNumber,
        name,
        cabinet,
        startAt,
        endAt
      ];
  @override
  String get aliasedName => _alias ?? 'lesson_table';
  @override
  String get actualTableName => 'lesson_table';
  @override
  VerificationContext validateIntegrity(Insertable<LessonSql> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('schedule_uuid')) {
      context.handle(
          _scheduleUuidMeta,
          scheduleUuid.isAcceptableOrUnknown(
              data['schedule_uuid']!, _scheduleUuidMeta));
    } else if (isInserting) {
      context.missing(_scheduleUuidMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('is_numerator')) {
      context.handle(
          _isNumeratorMeta,
          isNumerator.isAcceptableOrUnknown(
              data['is_numerator']!, _isNumeratorMeta));
    } else if (isInserting) {
      context.missing(_isNumeratorMeta);
    }
    if (data.containsKey('day_number')) {
      context.handle(_dayNumberMeta,
          dayNumber.isAcceptableOrUnknown(data['day_number']!, _dayNumberMeta));
    } else if (isInserting) {
      context.missing(_dayNumberMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('cabinet')) {
      context.handle(_cabinetMeta,
          cabinet.isAcceptableOrUnknown(data['cabinet']!, _cabinetMeta));
    } else if (isInserting) {
      context.missing(_cabinetMeta);
    }
    if (data.containsKey('start_at')) {
      context.handle(_startAtMeta,
          startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta));
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
          _endAtMeta, endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta));
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  LessonSql map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LessonSql.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LessonTableTable createAlias(String alias) {
    return $LessonTableTable(attachedDatabase, alias);
  }
}

class GroupSql extends DataClass implements Insertable<GroupSql> {
  final String uuid;
  final String name;
  final String customName;
  final String lessonUuid;
  GroupSql(
      {required this.uuid,
      required this.name,
      required this.customName,
      required this.lessonUuid});
  factory GroupSql.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return GroupSql(
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      customName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}custom_name'])!,
      lessonUuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lesson_uuid'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['name'] = Variable<String>(name);
    map['custom_name'] = Variable<String>(customName);
    map['lesson_uuid'] = Variable<String>(lessonUuid);
    return map;
  }

  GroupTableCompanion toCompanion(bool nullToAbsent) {
    return GroupTableCompanion(
      uuid: Value(uuid),
      name: Value(name),
      customName: Value(customName),
      lessonUuid: Value(lessonUuid),
    );
  }

  factory GroupSql.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GroupSql(
      uuid: serializer.fromJson<String>(json['uuid']),
      name: serializer.fromJson<String>(json['name']),
      customName: serializer.fromJson<String>(json['customName']),
      lessonUuid: serializer.fromJson<String>(json['lessonUuid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'name': serializer.toJson<String>(name),
      'customName': serializer.toJson<String>(customName),
      'lessonUuid': serializer.toJson<String>(lessonUuid),
    };
  }

  GroupSql copyWith(
          {String? uuid,
          String? name,
          String? customName,
          String? lessonUuid}) =>
      GroupSql(
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        customName: customName ?? this.customName,
        lessonUuid: lessonUuid ?? this.lessonUuid,
      );
  @override
  String toString() {
    return (StringBuffer('GroupSql(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('customName: $customName, ')
          ..write('lessonUuid: $lessonUuid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, name, customName, lessonUuid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GroupSql &&
          other.uuid == this.uuid &&
          other.name == this.name &&
          other.customName == this.customName &&
          other.lessonUuid == this.lessonUuid);
}

class GroupTableCompanion extends UpdateCompanion<GroupSql> {
  final Value<String> uuid;
  final Value<String> name;
  final Value<String> customName;
  final Value<String> lessonUuid;
  const GroupTableCompanion({
    this.uuid = const Value.absent(),
    this.name = const Value.absent(),
    this.customName = const Value.absent(),
    this.lessonUuid = const Value.absent(),
  });
  GroupTableCompanion.insert({
    required String uuid,
    required String name,
    required String customName,
    required String lessonUuid,
  })  : uuid = Value(uuid),
        name = Value(name),
        customName = Value(customName),
        lessonUuid = Value(lessonUuid);
  static Insertable<GroupSql> custom({
    Expression<String>? uuid,
    Expression<String>? name,
    Expression<String>? customName,
    Expression<String>? lessonUuid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (name != null) 'name': name,
      if (customName != null) 'custom_name': customName,
      if (lessonUuid != null) 'lesson_uuid': lessonUuid,
    });
  }

  GroupTableCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? name,
      Value<String>? customName,
      Value<String>? lessonUuid}) {
    return GroupTableCompanion(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      customName: customName ?? this.customName,
      lessonUuid: lessonUuid ?? this.lessonUuid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (customName.present) {
      map['custom_name'] = Variable<String>(customName.value);
    }
    if (lessonUuid.present) {
      map['lesson_uuid'] = Variable<String>(lessonUuid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GroupTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('customName: $customName, ')
          ..write('lessonUuid: $lessonUuid')
          ..write(')'))
        .toString();
  }
}

class $GroupTableTable extends GroupTable
    with TableInfo<$GroupTableTable, GroupSql> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GroupTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _customNameMeta = const VerificationMeta('customName');
  @override
  late final GeneratedColumn<String?> customName = GeneratedColumn<String?>(
      'custom_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lessonUuidMeta = const VerificationMeta('lessonUuid');
  @override
  late final GeneratedColumn<String?> lessonUuid = GeneratedColumn<String?>(
      'lesson_uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [uuid, name, customName, lessonUuid];
  @override
  String get aliasedName => _alias ?? 'group_table';
  @override
  String get actualTableName => 'group_table';
  @override
  VerificationContext validateIntegrity(Insertable<GroupSql> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('custom_name')) {
      context.handle(
          _customNameMeta,
          customName.isAcceptableOrUnknown(
              data['custom_name']!, _customNameMeta));
    } else if (isInserting) {
      context.missing(_customNameMeta);
    }
    if (data.containsKey('lesson_uuid')) {
      context.handle(
          _lessonUuidMeta,
          lessonUuid.isAcceptableOrUnknown(
              data['lesson_uuid']!, _lessonUuidMeta));
    } else if (isInserting) {
      context.missing(_lessonUuidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {lessonUuid, name};
  @override
  GroupSql map(Map<String, dynamic> data, {String? tablePrefix}) {
    return GroupSql.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $GroupTableTable createAlias(String alias) {
    return $GroupTableTable(attachedDatabase, alias);
  }
}

class TeacherSql extends DataClass implements Insertable<TeacherSql> {
  final String uuid;
  final String name;
  final String customName;
  final String lessonUuid;
  TeacherSql(
      {required this.uuid,
      required this.name,
      required this.customName,
      required this.lessonUuid});
  factory TeacherSql.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TeacherSql(
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      customName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}custom_name'])!,
      lessonUuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lesson_uuid'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['name'] = Variable<String>(name);
    map['custom_name'] = Variable<String>(customName);
    map['lesson_uuid'] = Variable<String>(lessonUuid);
    return map;
  }

  TeacherTableCompanion toCompanion(bool nullToAbsent) {
    return TeacherTableCompanion(
      uuid: Value(uuid),
      name: Value(name),
      customName: Value(customName),
      lessonUuid: Value(lessonUuid),
    );
  }

  factory TeacherSql.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeacherSql(
      uuid: serializer.fromJson<String>(json['uuid']),
      name: serializer.fromJson<String>(json['name']),
      customName: serializer.fromJson<String>(json['customName']),
      lessonUuid: serializer.fromJson<String>(json['lessonUuid']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'name': serializer.toJson<String>(name),
      'customName': serializer.toJson<String>(customName),
      'lessonUuid': serializer.toJson<String>(lessonUuid),
    };
  }

  TeacherSql copyWith(
          {String? uuid,
          String? name,
          String? customName,
          String? lessonUuid}) =>
      TeacherSql(
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        customName: customName ?? this.customName,
        lessonUuid: lessonUuid ?? this.lessonUuid,
      );
  @override
  String toString() {
    return (StringBuffer('TeacherSql(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('customName: $customName, ')
          ..write('lessonUuid: $lessonUuid')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, name, customName, lessonUuid);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeacherSql &&
          other.uuid == this.uuid &&
          other.name == this.name &&
          other.customName == this.customName &&
          other.lessonUuid == this.lessonUuid);
}

class TeacherTableCompanion extends UpdateCompanion<TeacherSql> {
  final Value<String> uuid;
  final Value<String> name;
  final Value<String> customName;
  final Value<String> lessonUuid;
  const TeacherTableCompanion({
    this.uuid = const Value.absent(),
    this.name = const Value.absent(),
    this.customName = const Value.absent(),
    this.lessonUuid = const Value.absent(),
  });
  TeacherTableCompanion.insert({
    required String uuid,
    required String name,
    required String customName,
    required String lessonUuid,
  })  : uuid = Value(uuid),
        name = Value(name),
        customName = Value(customName),
        lessonUuid = Value(lessonUuid);
  static Insertable<TeacherSql> custom({
    Expression<String>? uuid,
    Expression<String>? name,
    Expression<String>? customName,
    Expression<String>? lessonUuid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (name != null) 'name': name,
      if (customName != null) 'custom_name': customName,
      if (lessonUuid != null) 'lesson_uuid': lessonUuid,
    });
  }

  TeacherTableCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? name,
      Value<String>? customName,
      Value<String>? lessonUuid}) {
    return TeacherTableCompanion(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      customName: customName ?? this.customName,
      lessonUuid: lessonUuid ?? this.lessonUuid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (customName.present) {
      map['custom_name'] = Variable<String>(customName.value);
    }
    if (lessonUuid.present) {
      map['lesson_uuid'] = Variable<String>(lessonUuid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeacherTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('customName: $customName, ')
          ..write('lessonUuid: $lessonUuid')
          ..write(')'))
        .toString();
  }
}

class $TeacherTableTable extends TeacherTable
    with TableInfo<$TeacherTableTable, TeacherSql> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeacherTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _customNameMeta = const VerificationMeta('customName');
  @override
  late final GeneratedColumn<String?> customName = GeneratedColumn<String?>(
      'custom_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lessonUuidMeta = const VerificationMeta('lessonUuid');
  @override
  late final GeneratedColumn<String?> lessonUuid = GeneratedColumn<String?>(
      'lesson_uuid', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [uuid, name, customName, lessonUuid];
  @override
  String get aliasedName => _alias ?? 'teacher_table';
  @override
  String get actualTableName => 'teacher_table';
  @override
  VerificationContext validateIntegrity(Insertable<TeacherSql> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('custom_name')) {
      context.handle(
          _customNameMeta,
          customName.isAcceptableOrUnknown(
              data['custom_name']!, _customNameMeta));
    } else if (isInserting) {
      context.missing(_customNameMeta);
    }
    if (data.containsKey('lesson_uuid')) {
      context.handle(
          _lessonUuidMeta,
          lessonUuid.isAcceptableOrUnknown(
              data['lesson_uuid']!, _lessonUuidMeta));
    } else if (isInserting) {
      context.missing(_lessonUuidMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {lessonUuid, name};
  @override
  TeacherSql map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TeacherSql.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TeacherTableTable createAlias(String alias) {
    return $TeacherTableTable(attachedDatabase, alias);
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ScheduleTableTable scheduleTable = $ScheduleTableTable(this);
  late final $LessonTableTable lessonTable = $LessonTableTable(this);
  late final $GroupTableTable groupTable = $GroupTableTable(this);
  late final $TeacherTableTable teacherTable = $TeacherTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [scheduleTable, lessonTable, groupTable, teacherTable];
}
