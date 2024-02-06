import 'package:bbmstu_app/src/core/local_database/local_database_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/schedule/data/favorites_repository.dart';
import 'package:bbmstu_app/src/features/schedule/domain/favorites_registry.dart';
import 'package:flutter/material.dart';

typedef _Value = FavoritesRepository;

typedef _Scope = ValueScope<_Value>;

@immutable
class FavoritesRepositoryScope extends StatelessWidget {
  final Widget child;

  const FavoritesRepositoryScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  static _Value watch(BuildContext context) => ValueScope.watch<_Value>(context);

  static _Value read(BuildContext context) => ValueScope.read<_Value>(context);

  @override
  Widget build(BuildContext context) {
    return _Scope(
      value: _Value(
        local: LocalDatabaseScope.watchScheduleDao(context),
        favoritesRegistry: FavoritesRegistry(),
        flagsRegistry: FavoritesFlagsRegistry(),
      ),
      child: child,
    );
  }
}
