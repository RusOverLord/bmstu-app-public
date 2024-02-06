import 'package:bbmstu_app/src/core/features/error_label/presentation/bloc/error_label_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorNotifierBase extends StateNotifier<ErrorLabelState> {
  static const empty = ErrorLabelState.empty();
  static const noConnection = ErrorLabelState.noConnection();

  ErrorNotifierBase() : super(empty);

  void hide() => state = empty;

  void showNoConnection() => state = noConnection;
}
