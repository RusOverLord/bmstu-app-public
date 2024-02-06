import 'package:bbmstu_app/src/features/news/presentation/bloc/news_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsScrollControllerProvider =
    Provider.autoDispose<NewsScrollController>((ref) {
  return NewsScrollControllerImpl(
    read: ref.read,
  );
});

abstract class NewsScrollController {
  void subscribe(ScrollController controller);
}

class NewsScrollControllerImpl implements NewsScrollController {
  final Reader read;
  bool isBusy = false;

  NewsScrollControllerImpl({
    required this.read,
  });

  NewsListNotifier get newsListNotifier =>
      read(newsListNotifierProvider.notifier);

  @override
  void subscribe(ScrollController controller) {
    controller.addListener(() => controllerListener(controller));
  }

  void controllerListener(ScrollController controller) {
    if (isBusy) {
      return;
    }

    final scrollPosition = controller.position;
    final pixels = scrollPosition.pixels;
    final maxExtent = scrollPosition.maxScrollExtent;

    if (pixels > maxExtent - 800) {
      isBusy = true;
      newsListNotifier.loadNext().then((_) {
        isBusy = false;
      });
    }
  }
}
