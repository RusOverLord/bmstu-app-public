import 'package:bbmstu_app/src/core/features/error_label/presentation/bloc/error_label_notifier.dart';
import 'package:bbmstu_app/src/core/features/error_label/presentation/bloc/error_label_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newsPageErrorNotifierProvider =
    StateNotifierProvider.autoDispose<NewsPageErrorNotifier, ErrorLabelState>(
        (ref) {
  return NewsPageErrorNotifierImpl();
});

abstract class NewsPageErrorNotifier implements StateNotifier<ErrorLabelState> {
  void hide();

  void showNoConnection();
}

class NewsPageErrorNotifierImpl extends ErrorNotifierBase
    implements NewsPageErrorNotifier {
  NewsPageErrorNotifierImpl() : super();
}
