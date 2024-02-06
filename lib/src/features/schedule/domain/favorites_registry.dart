import 'package:bbmstu_app/src/features/schedule/models/models.dart';

class FavoritesRegistry {
  Favorites? __favorites;

  Favorites get _favorites => __favorites ??= Favorites.empty();

  Favorites? get favorites => __favorites?.copy();

  void replace(Favorites favorites) => __favorites = favorites.copy();

  void add(Whom favorite) => _favorites.add(favorite);

  void remove(String uuid) => _favorites.remove(uuid);
}

class FavoritesFlagsRegistry {
  final _isFavorite = <String, bool>{};

  bool? operator[] (String key) => _isFavorite[key];

  void operator[]= (String key, bool isFavorite) => _isFavorite[key] = isFavorite;

  void mark(String uuid) => _isFavorite[uuid] = true;

  void unmark(String uuid) => _isFavorite[uuid] = false;

  void clearWhereFavorite() => _isFavorite.removeWhere((key, value) => value);

  void replace(Favorites favorites) {
    _isFavorite.removeWhere((key, value) => value);

    for (var favorite in favorites) {
      mark(favorite.uuid);
    }
  }
}
