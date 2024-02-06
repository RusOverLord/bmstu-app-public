import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/loading_ring.dart';
import 'package:bbmstu_app/src/features/search/domain/view_models/view_models.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_app_bar.dart';
import 'package:bbmstu_app/src/features/search/domain/models/search_dialog_result.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_group_scope.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_error_label.dart';
import 'package:bbmstu_app/src/features/search/widgets/search_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_tab_bar.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/widgets/custom/teaser_view.dart';
import 'package:flutter/material.dart';

Future<SearchDialogResult> showSearchDialog(BuildContext context) async {
  return await Navigator.of(context).push<SearchDialogResult>(
        MaterialPageRoute(
          settings: const RouteSettings(name: 'SearchMainGroupScreen'),
          builder: (context) => const SearchScreen.dialog(),
        ),
      ) ??
      const SearchDialogResult.cancel();
}

class SearchScreen extends StatefulWidget {
  final bool isDialog;

  const SearchScreen({
    Key? key,
  })  : isDialog = false,
        super(key: key);

  const SearchScreen.dialog({
    Key? key,
  })  : isDialog = true,
        super(key: key);

  static SearchScreen? of(BuildContext context) => context.findAncestorWidgetOfExactType<SearchScreen>();

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with SingleTickerProviderStateMixin {
  late final tabController = TabController(vsync: this, length: 3);

  @override
  Widget build(BuildContext context) {
    return SearchGroupScope(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: const SearchAppBar(),
          body: Column(
            children: [
              StandardTabBar(
                tabs: const ['Группы', 'Преподаватели', 'Аудитории'],
                tabController: tabController,
              ),
              Indent.vertical(15 * devScale),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    SearchGroupView(),
                    TeaserView(
                      description: 'Скоро здесь Вы сможете увидеть расписание преподавателей',
                    ),
                    TeaserView(
                      description: 'Скоро здесь Вы сможете находить нужную аудиторию',
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: const SearchErrorLabel(),
        ),
      ),
    );
  }
}

class SearchGroupView extends StatelessWidget {
  const SearchGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final state = SearchGroupScope.watchState(context);
      return state.map(
        loading: (loading) => const LoadingRing(),
        data: (data) => SearchGroupViewData(lists: data.searchLists),
      );
    });
  }
}

@immutable
class SearchGroupViewData extends StatefulWidget {
  final TDSearchListViewModel lists;

  const SearchGroupViewData({
    Key? key,
    required this.lists,
  }) : super(key: key);

  @override
  State<SearchGroupViewData> createState() => _SearchGroupViewDataState();
}

class _SearchGroupViewDataState extends State<SearchGroupViewData> with TickerProviderStateMixin {
  late TabController _tabController = TabController(
    vsync: this,
    length: lists.length,
  );

  TDSearchListViewModel get lists => widget.lists;

  @override
  void didUpdateWidget(covariant SearchGroupViewData oldWidget) {
    super.didUpdateWidget(oldWidget);

    _tabController.dispose();

    final length = lists.length;
    final lastIndex = length - 1;
    final initialIndex = length > 1 ? lastIndex - 1 : 0;
    _tabController = TabController(
      vsync: this,
      length: length,
      initialIndex: initialIndex,
    );

    if (length > 1) {
      WidgetsBinding.instance?.addPostFrameCallback(
        (_) => _tabController.animateTo(lastIndex),
      );
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: widget.lists.map(
        (list) {
          return SearchListView(
            items: list,
          );
        },
      ).toList(),
    );
  }
}
