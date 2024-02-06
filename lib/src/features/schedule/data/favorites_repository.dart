import 'dart:async';

import 'package:bbmstu_app/src/features/schedule/data/mapper/favorites_mapper.dart';
import 'package:bbmstu_app/src/features/schedule/domain/favorites_registry.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:local_database/local_database.dart';

class FavoritesRepository {
  final ScheduleDao _local;
  final FavoritesRegistry _favoritesRegistry;
  final FavoritesFlagsRegistry _flagsRegistry;

  FavoritesRepository({
    required ScheduleDao local,
    required FavoritesRegistry favoritesRegistry,
    required FavoritesFlagsRegistry flagsRegistry,
  })  : _local = local,
        _favoritesRegistry = favoritesRegistry,
        _flagsRegistry = flagsRegistry;

  bool? isFavoriteSync(String uuid) => _flagsRegistry[uuid];

  Future<bool> isFavorite(String uuid) async {
    bool? isFavorite = isFavoriteSync(uuid);

    if (isFavorite != null) {
      return isFavorite;
    }

    isFavorite = await _local.checkIfFavorite(uuid);
    _flagsRegistry[uuid] = isFavorite;

    return isFavorite;
  }

  Future<void> addToFavorites(Whom whom) async {
    await _local.updateFavorite(whom.uuid, true);
    _flagsRegistry.mark(whom.uuid);
    _favoritesRegistry.add(whom);
  }

  Future<void> removeFromFavorites(String uuid) async {
    await _local.updateFavorite(uuid, false);
    _favoritesRegistry.remove(uuid);
    _flagsRegistry.unmark(uuid);
  }

  Favorites? getSync() => _favoritesRegistry.favorites;

  Future<Favorites> fetch() async {
    Future<Favorites> fireFetch() async {
      final favorites = (await _local.getFavorites()).toModel();
      _favoritesRegistry.replace(favorites);
      return favorites;
    }

    return getSync() ?? await fireFetch();
  }
}