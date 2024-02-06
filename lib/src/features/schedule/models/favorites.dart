import 'package:bbmstu_app/src/features/schedule/models/whom.dart';

class Favorites extends Iterable<Whom> {
  final List<Group> _groups;
  final List<Teacher> _teachers;

  const Favorites({
    required List<Group> groups,
    required List<Teacher> teachers,
  })  : _groups = groups,
        _teachers = teachers;

  Favorites.empty()
      : this(
          groups: List.empty(growable: true),
          teachers: List.empty(growable: true),
        );

  Iterable<Group> get groups => _groups;

  Iterable<Teacher> get teachers => _teachers;

  @override
  bool get isEmpty => groups.isEmpty && teachers.isEmpty;

  void add(Whom item) {
    item.map(
      group: _groups.add,
      teacher: _teachers.add,
    );
  }

  void remove(String uuid) {
    _groups.removeWhere((element) => element.uuid == uuid);
    _teachers.removeWhere((element) => element.uuid == uuid);
  }

  Favorites copy() {
    return Favorites(
      groups: List.of(groups),
      teachers: List.of(teachers),
    );
  }

  @override
  Iterator<Whom> get iterator => [...groups, ...teachers].iterator;
}
