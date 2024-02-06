import 'package:bbmstu_app/src/features/schedule/data/mapper/group_mapper.dart';
import 'package:bbmstu_app/src/features/schedule/data/mapper/teacher_mapper.dart';
import 'package:bbmstu_app/src/features/schedule/models/favorites.dart';
import 'package:local_database/local_database.dart';

extension FavoritesSqlCollectionMapper on FavoritesSqlCollection {
  Favorites toModel() {
    return Favorites(
      groups: groups.map((e) => e.toModel()).toList(),
      teachers: teachers.map((e) => e.toModel()).toList(),
    );
  }
}
