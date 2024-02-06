import 'package:bbmstu_app/src/core/analytics.dart';
import 'package:bbmstu_app/src/core/widgets/bottom_bar_broadcaster.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/favorites/favorites_page_view.dart';
import 'package:bbmstu_app/src/features/news/presentation/pages/news_page_view.dart';
import 'package:bbmstu_app/src/features/search/search.dart';
import 'package:bbmstu_app/src/features/settings/widgets/settings_screen.dart';
import 'package:flutter/widgets.dart';

enum PageType {
  news,
  search,
  main,
  favorites,
  settings,
}

extension PageTypeStudentStudentCompare on PageType {
  bool get isNews => this == PageType.news;

  bool get isSearch => this == PageType.search;

  bool get isMain => this == PageType.main;

  bool get isFavorites => this == PageType.favorites;

  bool get isSettings => this == PageType.settings;
}

class HomeBloc extends ValueNotifier<PageType> {
  final IBottomBarBroadcaster _bottomBarBroadcaster;
  final IAnalytics _analytics;

  HomeBloc({
    required IBottomBarBroadcaster bottomBarBroadcaster,
    required IAnalytics analytics,
  })  : _bottomBarBroadcaster = bottomBarBroadcaster,
        _analytics = analytics,
        super(PageType.main);

  void changePage(PageType pageType) {
    changePageEventHandler(pageType);
    value = pageType;
  }

  void changePageEventHandler(PageType pageType) {
    switch (pageType) {
      case PageType.news:
        _bottomBarBroadcaster.callEvent<NewsPageView>();
        _analytics.setCurrentScreen(screenName: 'NewsListScreen');
        break;
      case PageType.search:
        _bottomBarBroadcaster.callEvent<SearchScreen>();
        _analytics.setCurrentScreen(screenName: 'SearchScreen');
        break;
      case PageType.main:
        break;
      case PageType.favorites:
        _bottomBarBroadcaster.callEvent<FavoritesPageView>();
        _analytics.setCurrentScreen(screenName: 'FavoriteListScreen');
        break;
      case PageType.settings:
        _bottomBarBroadcaster.callEvent<SettingsScreen>();
        _analytics.setCurrentScreen(screenName: 'MenuScreen');
        break;
    }
  }
}
