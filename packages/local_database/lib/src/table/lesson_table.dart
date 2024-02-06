import 'package:drift/drift.dart';

@DataClassName('LessonSql')
class LessonTable extends Table {
  TextColumn get uuid => text()();
  TextColumn get scheduleUuid => text()();
  TextColumn get type => text()();
  BoolColumn get isNumerator => boolean()();
  IntColumn get dayNumber => integer()();
  TextColumn get name => text()();
  TextColumn get cabinet => text()();
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();

  @override
  Set<Column> get primaryKey => {uuid};
}
