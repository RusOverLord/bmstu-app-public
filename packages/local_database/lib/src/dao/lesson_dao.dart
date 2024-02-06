import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

import 'package:local_database/src/table/tables.dart';
import 'package:local_database/src/model/model.dart';
import 'package:local_database/src/local_database.dart';

part 'lesson_dao.g.dart';

abstract class ILessonDao {
  Future<Iterable<LessonSqlComplexGroup>> readGroupLessons(String scheduleUuid);

  Future<Iterable<LessonSqlComplexTeacher>> readTeacherLessons(String scheduleUuid);
}

mixin LessonDaoMixin on DatabaseAccessor<LocalDatabase> implements ILessonDao {
  LessonDao get lessonDao;

  @override
  Future<Iterable<LessonSqlComplexGroup>> readGroupLessons(String scheduleUuid) => lessonDao.readGroupLessons(scheduleUuid);

  @override
  Future<Iterable<LessonSqlComplexTeacher>> readTeacherLessons(String scheduleUuid) => lessonDao.readTeacherLessons(scheduleUuid);
}

@DriftAccessor(
  tables: [LessonTable, GroupTable, TeacherTable],
)
class LessonDao extends DatabaseAccessor<LocalDatabase> with _$LessonDaoMixin implements ILessonDao {
  LessonDao({required LocalDatabase db}) : super(db);

  @override
  Future<Iterable<LessonSqlComplexGroup>> readGroupLessons(String scheduleUuid) async {
    final lessonsAndTeachers = await (select(lessonTable)..where((tbl) => tbl.scheduleUuid.equals(scheduleUuid))).join([
      leftOuterJoin(teacherTable, teacherTable.lessonUuid.equalsExp(lessonTable.uuid)),
    ]).get();

    return GroupLessonsReader.map(this, lessonsAndTeachers.iterator);
  }

  @override
  Future<Iterable<LessonSqlComplexTeacher>> readTeacherLessons(String scheduleUuid) async {
    final lessonsAndGroups = await (select(lessonTable)..where((tbl) => tbl.scheduleUuid.equals(scheduleUuid))).join([
      leftOuterJoin(groupTable, groupTable.lessonUuid.equalsExp(lessonTable.uuid)),
    ]).get();

    return TeacherLessonsReader.map(this, lessonsAndGroups.iterator);
  }

  LessonSql readLesson(TypedResult row) => row.readTable(lessonTable);

  GroupSql? readGroup(TypedResult row) => row.readTableOrNull(groupTable);

  TeacherSql? readTeacher(TypedResult row) => row.readTableOrNull(teacherTable);
}

abstract class LessonsReader<Lesson extends LessonSqlComplex, Item> {
  @protected
  LessonDao get dao;
  final Iterator<TypedResult> _iterator;
  bool _hasNext;

  LessonsReader(this._iterator) : _hasNext = _iterator.moveNext();

  @protected
  TypedResult get currentRow => _iterator.current;

  LessonSql _readLesson() => dao.readLesson(currentRow);

  @protected
  Iterable<Lesson> readAll() sync* {
    while (_hasNext) {
      final lesson = _readLesson();
      yield createLessonSqlComplex(lesson);
    }
  }

  @protected
  Iterable<Item> readLessonItems() sync* {
    LessonSql currentLesson = _readLesson();

    do {
      final item = readItem(currentRow);

      if (item != null) {
        yield item;
      }

      _hasNext = _iterator.moveNext();
    } while (_hasNext && currentLesson == _readLesson());
  }

  @protected
  Lesson createLessonSqlComplex(LessonSql lesson);

  @protected
  Item? readItem(TypedResult row);
}

class GroupLessonsReader extends LessonsReader<LessonSqlComplexGroup, TeacherSql> {
  @override
  final LessonDao dao;

  GroupLessonsReader(
    this.dao,
    Iterator<TypedResult> _iterator,
  ) : super(_iterator);

  static Iterable<LessonSqlComplexGroup> map(LessonDao dao, Iterator<TypedResult> lessonsAndTeachers) {
    return GroupLessonsReader(dao, lessonsAndTeachers).readAll();
  }

  @override
  LessonSqlComplexGroup createLessonSqlComplex(LessonSql lesson) {
    return LessonSqlComplexGroup(
      lesson: lesson,
      teachers: readLessonItems(),
    );
  }

  @override
  TeacherSql? readItem(TypedResult row) => dao.readTeacher(currentRow);
}

class TeacherLessonsReader extends LessonsReader<LessonSqlComplexTeacher, GroupSql> {
  @override
  final LessonDao dao;

  TeacherLessonsReader(
      this.dao,
    Iterator<TypedResult> _iterator,
  ) : super(_iterator);

  static Iterable<LessonSqlComplexTeacher> map(LessonDao dao, Iterator<TypedResult> lessonsAndGroups) {
    return TeacherLessonsReader(dao, lessonsAndGroups).readAll();
  }

  @override
  LessonSqlComplexTeacher createLessonSqlComplex(LessonSql lesson) {
    return LessonSqlComplexTeacher(
      lesson: lesson,
      groups: readLessonItems(),
    );
  }

  @override
  GroupSql? readItem(TypedResult row) => dao.readGroup(currentRow);
}
