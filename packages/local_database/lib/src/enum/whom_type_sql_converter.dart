import 'package:drift/drift.dart';

import 'enum.dart';

class WhomTypeMoorConverter extends TypeConverter<WhomTypeSql, String> {
  const WhomTypeMoorConverter();

  @override
  WhomTypeSql? mapToDart(String? fromDb) => fromDb == null ? null : WhomTypeSql.values.byName(fromDb);

  @override
  String? mapToSql(WhomTypeSql? value) => value?.name;
}
