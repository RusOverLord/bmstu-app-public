import 'package:drift/drift.dart';
import 'package:local_database/src/enum/enum.dart';

@DataClassName('ScheduleSql')
class ScheduleTable extends Table {
  TextColumn get uuid => text()();
  BoolColumn get isFavorite => boolean().nullable()();
  TextColumn get whomType => text().nullable().map(const WhomTypeMoorConverter())();
  BoolColumn get isNumeratorFirst => boolean().nullable()();
  DateTimeColumn get semesterStart => dateTime().nullable()();
  DateTimeColumn get semesterEnd => dateTime().nullable()();
  TextColumn get etag => text().nullable()();

  @override
  Set<Column> get primaryKey => {uuid};
}


