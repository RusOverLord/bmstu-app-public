import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'dart:io';
import 'table/tables.dart';
import 'enum/enum.dart';

import 'package:sqflite/sqflite.dart' as s;


part 'local_database.g.dart';


LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final folderPath = await s.getDatabasesPath();
    final file = File(p.join(folderPath, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(
  tables: [ScheduleTable, LessonTable, GroupTable, TeacherTable],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 5;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) => m.createAll(),
      onUpgrade: (m, from, to) async {
        if (from < 2) await _onUpgradeTo2(m);
        if (from < 3) await _onUpgradeTo3(m);
        if (from < 4) await _onUpgradeTo4(m);
        if (from < 5) await _onUpgradeTo5(m);
      },
    );
  }

  Future<void> _onUpgradeTo2(Migrator m) async {
    // update primaryKey
    await m.alterTable(TableMigration(teacherTable));
    await m.alterTable(TableMigration(groupTable));
  }

  Future<void> _onUpgradeTo3(Migrator m) async {
    await transaction(() async {
      await customWriteReturning('ALTER TABLE schedule_table RENAME TO schedule_table_old;');
      await m.createTable(scheduleTable);
      await customWriteReturning(
          '''
          INSERT INTO schedule_table(is_favorite, uuid, whom_type, is_numerator_first, semester_start, semester_end, etag)
          SELECT 
          CASE WHEN schedule_type = 'favorite' THEN 1 ELSE 0 END,
          uuid, whom_type, is_numerator_first, semester_start, semester_end, etag
          FROM schedule_table_old;
          '''
      );
      await customWriteReturning('DROP TABLE schedule_table_old;');
    });
  }

  Future<void> _onUpgradeTo4(Migrator m) async {
    /// сделать поля isFavorite, whomType, isNumeratorFirst, semesterStart, semesterEnd, etag
    /// nullable
    await m.alterTable(TableMigration(scheduleTable));
  }

  Future<void> _onUpgradeTo5(Migrator m) async {
    /// убрано значение по умолчанию у поля isFavorite
    await m.alterTable(TableMigration(scheduleTable));
  }
}
