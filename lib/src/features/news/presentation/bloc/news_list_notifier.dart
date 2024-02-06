import 'dart:async';
import 'package:bbmstu_app/src/core/error/failures.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_list.dart';
import 'package:bbmstu_app/src/features/news/domain/usecases/get_news_list.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_list_collection.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_list_state.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_page_error_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsListNotifierProvider =
    StateNotifierProvider.autoDispose<NewsListNotifier, NewsListState>((ref) {
  final listStateCache = ref.read(_newsListStateCache).state;
  final collectionCache = ref.read(_newsCollectionCache).state;

  return NewsListNotifierImpl(
    read: ref.read,
    initState: listStateCache,
    listsCollection: collectionCache,
    newsListRequest: ref.watch(newsListRequestProvider),
  );
});

final _newsListStateCache = StateProvider<NewsListState>((ref) {
  return NewsListState.loading();
});

final _newsCollectionCache = StateProvider<NewsListCollection>((ref) {
  return NewsListCollection(newsLists: []);
});

abstract class NewsListNotifier implements StateNotifier<NewsListState> {
  Future<void> refresh();

  Future<void> loadNext();
}

class NewsListNotifierImpl extends StateNotifier<NewsListState>
    implements NewsListNotifier {
  final Reader read;
  final NewsListRequest newsListRequest;
  late final NewsListCollection listsCollection;
  bool isBusy = false;

  NewsListNotifierImpl({
    required this.read,
    required NewsListState initState,
    required this.listsCollection,
    required this.newsListRequest,
  }) : super(initState) {
    loadFirst();
  }

  NewsPageErrorNotifier get newsPageErrorNotifier =>
      read(newsPageErrorNotifierProvider.notifier);

  @override
  Future<void> refresh() => loadFirst();

  Future<void> loadFirst() {
    return doRequest(
      page: 1,
      onData: (data) {
        if (listsCollection.isNotEmpty && data.isNotEmpty) {
          final currentFirstUuid = listsCollection.first.uuid;
          final newFirstUuid = data[0].uuid;

          if (currentFirstUuid == newFirstUuid) {
            return;
          }
        }

        listsCollection.clear();
        listsCollection.add(data);
        updateState();
      },
      onFailure: (failure) {
        newsPageErrorNotifier.showNoConnection();
      },
    );
  }

  @override
  Future<void> loadNext() {
    if (listsCollection.isEmpty) {
      return loadFirst();
    }

    var page = listsCollection.length;
    final addNext = listsCollection.lastIsFull;

    if (addNext) {
      page++;
    }

    return doRequest(
      page: page,
      onData: (data) {
        if (addNext) {
          listsCollection.add(data);
        } else {
          listsCollection.replaceLast(data);
        }

        updateState();
      },
      onFailure: (failure) {
        newsPageErrorNotifier.showNoConnection();
      },
    );
  }

  Future<void> doRequest({
    required int page,
    required void Function(NewsList) onData,
    required void Function(Failure) onFailure,
  }) async {
    if (!isBusy) {
      isBusy = true;

      final request = newsListRequest.call(NewsListRequestParams(page: page));
      await request.execute(
        onData: onData,
        onFailure: onFailure,
      );

      isBusy = false;
    }
  }

  void updateState() {
    setState(() {
      state = NewsListState.data(NewsListStateData(listsCollection));
      newsPageErrorNotifier.hide();
      read(_newsCollectionCache).state = listsCollection;
      read(_newsListStateCache).state = state;
    });
  }

  void setState(void Function() setState) {
    if (mounted) {
      setState();
    }
  }
}
