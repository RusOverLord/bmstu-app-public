import 'package:bbmstu_app/src/core/features/error_label/presentation/widgets/error_label.dart';
import 'package:bbmstu_app/src/features/news/presentation/bloc/news_page_error_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsPageErrorLabel extends ConsumerWidget {
  const NewsPageErrorLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(newsPageErrorNotifierProvider);

    if (state.show) {
      return ErrorLabel(state.message);
    }

    return const SizedBox();
  }
}
