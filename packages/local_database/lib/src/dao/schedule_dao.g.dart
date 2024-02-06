// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dao.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$ScheduleDaoMixin on DatabaseAccessor<LocalDatabase> {
  $ScheduleTableTable get scheduleTable => attachedDatabase.scheduleTable;
  $LessonTableTable get lessonTable => attachedDatabase.lessonTable;
  $GroupTableTable get groupTable => attachedDatabase.groupTable;
  $TeacherTableTable get teacherTable => attachedDatabase.teacherTable;
  Selectable<bool> checkIfExistsQuery(String uuid) {
    return customSelect(
        'SELECT EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND etag IS NOT NULL)',
        variables: [
          Variable<String>(uuid)
        ],
        readsFrom: {
          scheduleTable,
        }).map((QueryRow row) => row.read<bool>(
        'EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND etag IS NOT NULL)'));
  }

  Selectable<bool> checkIfFavoriteQuery(String uuid) {
    return customSelect(
        'SELECT EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND is_favorite = 1)',
        variables: [
          Variable<String>(uuid)
        ],
        readsFrom: {
          scheduleTable,
        }).map((QueryRow row) => row.read<bool>(
        'EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND is_favorite = 1)'));
  }

  Selectable<bool> checkIfExistsAndNotFavoriteQuery(String uuid) {
    return customSelect(
        'SELECT EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND is_favorite = 0)',
        variables: [
          Variable<String>(uuid)
        ],
        readsFrom: {
          scheduleTable,
        }).map((QueryRow row) => row.read<bool>(
        'EXISTS(SELECT 1 FROM schedule_table WHERE uuid = :uuid AND is_favorite = 0)'));
  }

  Selectable<GroupSql> favoriteGroupsQuery() {
    return customSelect(
        'SELECT * FROM group_table WHERE uuid IN (SELECT uuid FROM schedule_table WHERE is_favorite = 1) ORDER BY name',
        variables: [],
        readsFrom: {
          groupTable,
          scheduleTable,
        }).map(groupTable.mapFromRow);
  }

  Selectable<TeacherSql> favoriteTeachersQuery() {
    return customSelect(
        'SELECT * FROM teacher_table WHERE uuid IN (SELECT uuid FROM schedule_table WHERE is_favorite = 1) ORDER BY name',
        variables: [],
        readsFrom: {
          teacherTable,
          scheduleTable,
        }).map(teacherTable.mapFromRow);
  }

  Future<int> updateFavoriteQuery(String uuid, bool? is_favorite) {
    return customInsert(
      'INSERT INTO schedule_table (uuid, is_favorite) VALUES(:uuid, :is_favorite) ON CONFLICT(uuid) DO UPDATE SET is_favorite = :is_favorite WHERE uuid = :uuid',
      variables: [Variable<String>(uuid), Variable<bool?>(is_favorite)],
      updates: {scheduleTable},
    );
  }
}
