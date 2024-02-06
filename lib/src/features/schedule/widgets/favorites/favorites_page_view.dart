import 'package:bbmstu_app/src/features/schedule/widgets/favorites/favorites_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/favorites_bloc_scope.dart';
import 'package:flutter/material.dart';

@immutable
class FavoritesPageView extends StatelessWidget {
  const FavoritesPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBar.title(
        title: 'Закладки',
      ),
      body: const FavoritesBlocScope(
        child: FavoritesListView(),
      ),
    );
  }
}
