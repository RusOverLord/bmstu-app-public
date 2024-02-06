import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:flutter/material.dart';
import 'package:bbmstu_app/src/core/widgets/standard_loading_ring.dart';
import 'package:bbmstu_app/src/core/widgets/broadcaster_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/intro_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/favorites_bloc_scope.dart';

import 'favorites_item_view.dart';
import 'favorites_page_view.dart';
import 'list_header.dart';

@immutable
class FavoritesListView extends StatelessWidget {
  const FavoritesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favorites = FavoritesBlocScope.watch(context).favorites;
    if (favorites == null) return const StandardLoadingRing();
    if (favorites.isEmpty) return const _FavoritesListViewEmpty();
    return _FavoritesListViewData(favorites: favorites);
  }
}

@immutable
class _FavoritesListViewEmpty extends StatelessWidget {
  const _FavoritesListViewEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IntroView(
      assetImage: StandardAssetImage(
        imageAsset: ImageAsset.intro_3,
        themed: true,
      ),
      description: 'Здесь отображается расписание групп и преподавателей, которые Вы добавите в избранное',
    );
  }
}

@immutable
class _FavoritesListViewData extends StatelessWidget {
  final Favorites favorites;

  const _FavoritesListViewData({
    Key? key,
    required this.favorites,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BroadcasterListView<FavoritesPageView>(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 20 * devScale,
          right: 20 * devScale,
          left: 20 * devScale,
        ),
        child: Wrap(
          children: [
            ...listWithHeader(favorites.groups, 'Группы'),
            ...listWithHeader(favorites.teachers, 'Преподаватели'),
          ],
        ),
      ),
    );
  }

  List<Widget> listWithHeader(Iterable<Whom> items, String header) {
    return [
      ListHeader(
        key: ValueKey(header),
        text: header,
        visible: items.isNotEmpty,
      ),
      if (items.isNotEmpty)
      StandardListRoundedWrap(
        itemSpacing: 0,
        children: items
            .map(
              (e) => FavoritesItemView(
            key: ValueKey(e.uuid),
            item: e,
          ),
        )
            .toList(),
      ),
    ];
  }
}
