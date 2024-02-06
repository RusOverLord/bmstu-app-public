import 'package:bbmstu_app/src/core/analytics.dart';
import 'package:bbmstu_app/src/core/widgets/bottom_bar_broadcaster.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:bbmstu_app/src/features/bmstu_id/widget/bmstu_id_screen.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/favorites/favorites_page_view.dart';
import 'package:bbmstu_app/src/features/home/domain/home_bloc.dart';
import 'package:bbmstu_app/src/features/news/presentation/pages/news_page_view.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/screen/schedule_screen.dart';
import 'package:bbmstu_app/src/features/search/search.dart';
import 'package:bbmstu_app/src/features/settings/widgets/settings_screen.dart';
import 'package:flutter/material.dart';

import 'home_bottom_bar.dart';

typedef _Bloc = HomeBloc;

typedef _BlocScope = ValueScope<_Bloc>;

@immutable
class HomeScope extends StatefulWidget {
  const HomeScope({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScope> createState() => _HomeScopeState();

  static void showNews(BuildContext context) =>
      _BlocScope.read<_Bloc>(context).changePage(PageType.news);

  static void showSearch(BuildContext context) =>
      _BlocScope.read<_Bloc>(context).changePage(PageType.search);

  static void showMain(BuildContext context) =>
      _BlocScope.read<_Bloc>(context).changePage(PageType.main);

  static void showFavorites(BuildContext context) =>
      _BlocScope.read<_Bloc>(context).changePage(PageType.favorites);

  static void showSettings(BuildContext context) =>
      _BlocScope.read<_Bloc>(context).changePage(PageType.settings);
}

class _HomeScopeState extends State<HomeScope> {
  late final _Bloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = _Bloc(
      bottomBarBroadcaster: BottomBarBroadcaster(),
      analytics: IAnalytics.instance,
    );

    IAnalytics.instance.setCurrentScreen(screenName: 'HomeScreen');
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: AnimatedBuilder(
          animation: _bloc,
          builder: (context, child) => Column(
            children: [
              Expanded(
                child: _BlocScope(
                  value: _bloc,
                  child: _HomeScreenSwitcher(
                    pageType: _bloc.value,
                  ),
                ),
              ),
              HomeBottomBar(
                currentIndex: _bloc.value.index,
                onTap: (index) => _bloc.changePage(PageType.values[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@immutable
class _HomeScreenSwitcher extends StatelessWidget {
  final PageType pageType;

  const _HomeScreenSwitcher({
    Key? key,
    required this.pageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (pageType) {
      case PageType.news:
        return const NewsPageView();
      case PageType.search:
        return const SearchScreen();
      case PageType.main:
        return Builder(builder: (context) {
          final userType = AuthorizationScope.watchUserType(context);
          switch (userType) {
            case UserType.student:
              return const ScheduleScreenMain();
            case UserType.employee:
              return const BmstuIdScreen();
          }
        });
      case PageType.favorites:
        return const FavoritesPageView();
      case PageType.settings:
        return const SettingsScreen();
    }
  }
}
