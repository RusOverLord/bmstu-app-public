import 'package:bbmstu_app/src/core/features/error_label/presentation/bloc/error_label_state.dart';
import 'package:bbmstu_app/src/core/features/error_label/presentation/widgets/error_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef GetState = ErrorLabelState Function();

abstract class HookErrorLabel extends HookWidget {
  GetState get getState;

  const HookErrorLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = getState();

    if (state.show) {
      return ErrorLabel(state.message);
    }

    return const SizedBox();
  }
}
