import 'dart:async';

import 'package:bbmstu_app/src/core/error/failures.dart';
import 'package:bbmstu_app/src/core/network/repeating_request/repeating_request.dart';
import 'package:bbmstu_app/src/features/news/domain/entities/news_full.dart';
import 'package:bbmstu_app/src/features/news/domain/usecases/get_news_full.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_full_state.dart';
import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsFullNotifierProvider = StateNotifierProvider.family
    .autoDispose<NewsFullNotifier, NewsFullState, NewsFullContext>(
        (ref, context) {
  final getNewsFull = ref.watch(getNewsFullProvider);
  final persistentRequest =
      getNewsFull.call(GetNewsFullParams(uuid: context.newsUuid));
  final cache = ref.read(_newsFullCache(context)).state;

  final notifier = NewsFullNotifierImpl(
    read: ref.read,
    context: context,
    persistentRequest: persistentRequest,
    initState:
        (cache != null) ? NewsFullState.data(cache) : NewsFullState.loading(),
  );

  return notifier;
});

final _newsFullCache =
    StateProvider.family<NewsFullStateData?, NewsFullContext>(
  (ref, context) => null,
);

class NewsFullContext extends Equatable {
  final String newsUuid;

  const NewsFullContext(this.newsUuid);

  @override
  List<Object?> get props => [
        newsUuid,
      ];
}

abstract class NewsFullNotifier implements StateNotifier<NewsFullState> {
  Future<void> refresh();
}

class NewsFullNotifierImpl extends StateNotifier<NewsFullState>
    implements NewsFullNotifier {
  final Reader read;
  final NewsFullContext context;
  final RepeatingRequest<NewsFull> persistentRequest;
  bool isBusy = false;
  bool disposed = false;

  NewsFullNotifierImpl({
    required this.read,
    required this.context,
    required this.persistentRequest,
    required NewsFullState initState,
  }) : super(initState) {
    refresh();
  }

  @override
  Future<void> refresh() async {
    if (!isBusy) {
      isBusy = true;

      await persistentRequest.execute(
        onData: onData,
        onFailure: onFailure,
      );

      isBusy = false;
    }
  }

  void onData(NewsFull newsFull) {
    setState(() {
      final dataState = NewsFullStateData(newsFull);
      state = NewsFullState.data(dataState);
      read(_newsFullCache(context)).state = dataState;
    });
  }

  void onFailure(Failure failure) {
    setState(() {
      state.join(
        (loading) => state = NewsFullState.error(),
        (data) {},
        (error) => state = NewsFullState.error(),
      );
    });
  }

  void setState(void Function() setState) {
    if (mounted) {
      setState();
    }
  }
}
