import 'package:bbmstu_app/src/core/widgets/broadcaster_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/intro_view.dart';
import 'package:bbmstu_app/src/features/search/domain/models/search_item.dart';
import 'package:bbmstu_app/src/features/search/domain/view_models/view_models.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_item_view.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_rounded_wrap.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:charcode/html_entity.dart';

typedef SearchOnTap = void Function(SearchItem searchItem);

class SearchListView extends StatelessWidget {
  final List<Widget> children;

  const SearchListView._({
    required this.children,
  });

  SearchListView({
    required SearchListViewModel items,
  }) : this._(
          children: items.map((e) => SearchItemView(viewModel: e)).toList(),
        );

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return buildEmpty();
    }

    return BroadcasterListView<SearchScreen>(
      child: Padding(
        padding: EdgeInsets.only(
          top: 8 * devScale,
          bottom: 20 * devScale,
          left: 20 * devScale,
          right: 20 * devScale,
        ),
        child: StandardListRoundedWrap(
          children: children,
        ),
      ),
    );
  }

  Widget buildEmpty() {
    final mdash = String.fromCharCode($mdash);
    return IntroView(
      assetImage: const StandardAssetImage(
        themed: true,
        imageAsset: ImageAsset.empty_search,
      ),
      description:
          'Группа не найдена.\nЕсли так быть не должно $mdash напишите в поддержку',
    );
  }
}
