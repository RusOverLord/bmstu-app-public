import 'package:bbmstu_app/src/core/widgets/broadcaster_list_view.dart';
import 'package:bbmstu_app/src/core/widgets/standard_refresh_indicator.dart';
import 'package:bbmstu_app/src/core/widgets/loading_ring.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_scroll_controller.dart';
import 'package:bbmstu_app/src/features/news/presentation/widgets/news_page_error_label.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:bbmstu_app/src/features/news/presentation/widgets/news_preview_view.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsPageView extends HookWidget {
  const NewsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBar.title(
        title: 'Новости',
      ),
      body: buildBody(),
      bottomNavigationBar: const NewsPageErrorLabel(),
    );
  }

  Widget buildBody() {
    final newsNotifier = useProvider(newsListNotifierProvider.notifier);
    final listState = useProvider(newsListNotifierProvider);
    final newsScrollController = useProvider(newsScrollControllerProvider);
    final scrollController = useScrollController();
    newsScrollController.subscribe(scrollController);

    return listState.join(
      (loading) => const LoadingRing(),
      (data) => StandardRefreshIndicator(
        onRefresh: newsNotifier.refresh,
        child: BroadcasterListView<NewsPageView>.builder(
          padding: EdgeInsets.symmetric(
            vertical: 10.0 * devScale,
          ),
          controller: scrollController,
          itemCount: data.items.itemsCount,
          itemBuilder: (context, index) {
            final newsPreview = data.items[index];

            return ProviderScope(
              overrides: [
                newsPreviewProvider.overrideWithValue(newsPreview),
              ],
              child: const NewsPreviewView(),
            );
          },
        ),
      ),
    );
  }
}

// class _NewsPageViewState extends State<NewsPageView>
//     with BottomBarBroadcasterMixin<NewsPageView> {
//   late final ScrollController scrollController;
//   late NewsBloc bloc;
//
//
//   @override
//   Function getListener() =>
//           () {
//         scrollController.animateTo(
//           0,
//           duration: const Duration(milliseconds: 350),
//           curve: Curves.decelerate,
//         );
//       };
// }
