import 'package:drift/drift.dart';

@DataClassName('GroupSql')
class GroupTable extends Table {
  TextColumn get uuid => text()();
  TextColumn get name => text()();
  TextColumn get customName => text()();
  TextColumn get lessonUuid => text()();

  @override
  Set<Column> get primaryKey => {lessonUuid, name};
}
