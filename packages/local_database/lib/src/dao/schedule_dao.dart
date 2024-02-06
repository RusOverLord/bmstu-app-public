import 'package:drift/drift.dart';
import 'package:local_database/local_database.dart';
import 'package:local_database/src/table/tables.dart';

part 'schedule_dao.g.dart';

abstract class IScheduleDao {
  Future<void> insertSchedule(DecomposedScheduleSql decomposedSchedule);

  Future<void> deleteSchedule(String scheduleUuid);

  Future<ScheduleSqlComplex> getSchedule(String uuid);

  Future<bool> checkIfExists(String uuid);

  Future<bool> checkIfFavorite(String uuid);

  Future<bool> checkIfExistsAndNotFavorite(String uuid);

  Future<int> updateFavorite(String uuid, bool isFavorite);

  Future<FavoritesSqlCollection> getFavorites();
}

@DriftAccessor(tables: [
  ScheduleTable,
  LessonTable,
  GroupTable,
  TeacherTable,
], queries: {
  'checkIfExistsQuery': 'SELECT EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND etag IS NOT NULL)',
  'checkIfFavoriteQuery': 'SELECT EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND is_favorite = 1)',
  /// TODO:
  'checkIfExistsAndNotFavoriteQuery':
      'SELECT EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND is_favorite = 0)',
  'favoriteGroupsQuery':
      'SELECT * FROM group_table WHERE uuid IN (SELECT uuid FROM schedule_table WHERE is_favorite = 1) ORDER BY name',
  'favoriteTeachersQuery':
      'SELECT * FROM teacher_table WHERE uuid IN (SELECT uuid FROM schedule_table WHERE is_favorite = 1) ORDER BY name',
  'updateFavoriteQuery':
      'INSERT INTO schedule_table (uuid, is_favorite) VALUES(:uuid, :is_favorite) ON CONFLICT(uuid) DO UPDATE SET is_favorite = :is_favorite WHERE uuid = :uuid',
})
class ScheduleDao extends DatabaseAccessor<LocalDatabase>
    with _$ScheduleDaoMixin, LessonDaoMixin
    implements IScheduleDao {
  @override
  final LessonDao lessonDao;

  ScheduleDao({
    required LocalDatabase db,
    required this.lessonDao,
  }) : super(db);

  @override
  Future<void> insertSchedule(DecomposedScheduleSql decomposedSchedule) async {
    final scheduleUuid = decomposedSchedule.schedule.uuid;
    final isExists = await checkIfExists(scheduleUuid);

    await batch((batch) {
      if (isExists) {
        _deleteLessons(scheduleUuid, batch);
      }

      batch.insertOnConflictUpdateSchedule(scheduleTable, decomposedSchedule.schedule);

      decomposedSchedule.map(
        group: (group) => batch.insertOnConflictUpdateGroup(groupTable, group.group),
        teacher: (teacher) => batch.insertOnConflictUpdateTeacher(teacherTable, teacher.teacher),
      );

      batch.insertAll(lessonTable, decomposedSchedule.lessons);
      decomposedSchedule.lessonsWhom.when(
        groups: (groups) => batch.insertAll(groupTable, groups),
        teachers: (teachers) => batch.insertAll(teacherTable, teachers),
      );
    });
  }

  @override
  Future<void> deleteSchedule(String scheduleUuid) {
    return batch((batch) {
      batch.deleteWhere<$ScheduleTableTable, ScheduleSql>(
        scheduleTable,
        (tbl) => tbl.uuid.equals(scheduleUuid),
      );

      batch.deleteWhere<$GroupTableTable, GroupSql>(
        groupTable,
        (tbl) => tbl.uuid.equals(scheduleUuid),
      );

      batch.deleteWhere<$TeacherTableTable, TeacherSql>(
        teacherTable,
        (tbl) => tbl.uuid.equals(scheduleUuid),
      );

      _deleteLessons(scheduleUuid, batch);
    });
  }

  void _deleteLessons(String scheduleUuid, Batch batch) {
    final lessonsExpression = lessonTable.scheduleUuid.equals(scheduleUuid);
    final selectLessons = selectOnly(lessonTable)
      ..addColumns([lessonTable.uuid])
      ..where(lessonsExpression);

    batch.deleteWhere<$GroupTableTable, GroupSql>(
      groupTable,
      (tbl) => tbl.lessonUuid.isInQuery(selectLessons),
    );

    batch.deleteWhere<$TeacherTableTable, TeacherSql>(
      teacherTable,
      (tbl) => tbl.lessonUuid.isInQuery(selectLessons),
    );

    batch.deleteWhere<$LessonTableTable, LessonSql>(
      lessonTable,
      (tbl) => lessonsExpression,
    );
  }

  @override
  Future<ScheduleSqlComplex> getSchedule(String uuid) async {
    final scheduleAndMainWhom = await (select(scheduleTable)..where((tbl) => tbl.uuid.equals(uuid))).join([
      leftOuterJoin(groupTable, groupTable.uuid.equalsExp(scheduleTable.uuid)),
      leftOuterJoin(teacherTable, teacherTable.uuid.equalsExp(scheduleTable.uuid)),
    ]).getSingle();

    final schedule = scheduleAndMainWhom.readTable(scheduleTable);

    switch (schedule.whomType!) {
      case WhomTypeSql.group:
        {
          final group = scheduleAndMainWhom.readTable(groupTable);
          return ScheduleSqlComplex.group(
            schedule: schedule,
            group: group,
            lessons: await readGroupLessons(uuid),
          );
        }
      case WhomTypeSql.teacher:
        {
          final teacher = scheduleAndMainWhom.readTable(teacherTable);
          return ScheduleSqlComplex.teacher(
            schedule: schedule,
            teacher: teacher,
            lessons: await readTeacherLessons(uuid),
          );
        }
    }
  }

  @override
  Future<bool> checkIfExists(String uuid) => checkIfExistsQuery(uuid).getSingle();

  @override
  Future<bool> checkIfFavorite(String uuid) => checkIfFavoriteQuery(uuid).getSingle();

  @override
  Future<bool> checkIfExistsAndNotFavorite(String uuid) => checkIfExistsAndNotFavoriteQuery(uuid).getSingle();

  @override
  Future<int> updateFavorite(String uuid, bool isFavorite) {
    return into(scheduleTable).insertOnConflictUpdate(
      ScheduleTableCompanion(
        uuid: Value(uuid),
        isFavorite: Value(isFavorite),
      ),
    );
  }
  
  @override
  Future<FavoritesSqlCollection> getFavorites() async {
    return FavoritesSqlCollection(
      groups: await favoriteGroupsQuery().get(),
      teachers: await favoriteTeachersQuery().get(),
    );
  }
}

class WhomSqlEmptyError implements Exception {
  const WhomSqlEmptyError();
}

extension on Batch {
  void insertOnConflictUpdateSchedule($ScheduleTableTable table, ScheduleSql row) {
    insert<$ScheduleTableTable, ScheduleSql>(
      table,
      row,
      onConflict: DoUpdate((_) => row.toCompanion(true)),
    );
  }

  void insertOnConflictUpdateGroup($GroupTableTable table, GroupSql row) {
    insert<$GroupTableTable, GroupSql>(
      table,
      row,
      onConflict: DoUpdate((_) => row.toCompanion(true)),
    );
  }

  void insertOnConflictUpdateTeacher($TeacherTableTable table, TeacherSql row) {
    insert<$TeacherTableTable, TeacherSql>(
      table,
      row,
      onConflict: DoUpdate((_) => row.toCompanion(true)),
    );
  }
}
