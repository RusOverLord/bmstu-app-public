import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foreigners_simple_notifier.freezed.dart';

class ForeignersSimpleNotifier<ViewModel>
    extends StateNotifier<ForeignersSimpleNotifierState<ViewModel>> {
  late final StreamSubscription<ViewModel> subscription;

  ForeignersSimpleNotifier({
    required ForeignersSimpleNotifierState<ViewModel> state,
    required Stream<ViewModel> viewModelStream,
  }) : super(state) {
    subscription = viewModelStream.listen(streamListener);
    checkConnection();
  }

  void streamListener(ViewModel viewModel) {
    setState(() {
      state = ForeignersSimpleNotifierState.data(viewModel);
    });
  }

  void checkConnection() {
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        if (state.isLoading) {
          state = const ForeignersSimpleNotifierState.error();
        }
      });
    });
  }

  void setState(void Function() setState) {
    if (mounted) {
      setState();
    }
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}

@freezed
class ForeignersSimpleNotifierState<ViewModel>
    with _$ForeignersSimpleNotifierState<ViewModel> {
  const factory ForeignersSimpleNotifierState.loading() =
      _LoadingState<ViewModel>;

  const factory ForeignersSimpleNotifierState.data(ViewModel viewModel) =
      _DataState<ViewModel>;

  const factory ForeignersSimpleNotifierState.error() = _ErrorState<ViewModel>;
}

extension ForeignersSimpleNotifierStateCompare
    on ForeignersSimpleNotifierState {
  bool get isLoading {
    return map(
      loading: (loading) => true,
      data: (data) => false,
      error: (error) => false,
    );
  }

  bool get isData {
    return map(
      loading: (loading) => false,
      data: (data) => true,
      error: (error) => false,
    );
  }

  bool get isError {
    return map(
      loading: (loading) => false,
      data: (data) => false,
      error: (error) => true,
    );
  }
}
