import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef ProviderAutoDisposeBuilder<T> = T Function(AutoDisposeProviderReference ref);
typedef ProviderAutoDisposeFamilyBuilder<T, Params> = T Function(AutoDisposeProviderReference ref, Params params);

abstract class ProviderTemplates {
  /// Provider.autoDispose<Bloc> that auto dispose bloc
  static AutoDisposeProvider<T> blocBase<T extends BlocBase>(ProviderAutoDisposeBuilder<T> builder) {
    return Provider.autoDispose<T>(
      (ref) {
        final blocBase = builder(ref);
        ref.onDispose(blocBase.close);
        return blocBase;
      },
    );
  }

  /// Provider.autoDispose.family<Bloc> that auto dispose bloc
  static AutoDisposeProviderFamily<T, Params> blocBaseFamily<T extends BlocBase, Params>(
      ProviderAutoDisposeFamilyBuilder<T, Params> builder) {
    return Provider.autoDispose.family<T, Params>(
      (ref, params) {
        final blocBase = builder(ref, params);
        ref.onDispose(blocBase.close);
        return blocBase;
      },
    );
  }

  /// Provider.autoDispose<PageController> that auto dispose notifier
  static AutoDisposeProvider<T> changeNotifier<T extends ChangeNotifier>(
    ProviderAutoDisposeBuilder<T> builder,
  ) {
    return Provider.autoDispose<T>(
      (ref) {
        final controller = builder(ref);
        ref.onDispose(controller.dispose);
        return controller;
      },
    );
  }

  /// Provider.autoDispose.family<PageController> that auto dispose notifier
  static AutoDisposeProviderFamily<T, Params> changeNotifierFamily<T extends ChangeNotifier, Params>(
    ProviderAutoDisposeFamilyBuilder<T, Params> builder,
  ) {
    return Provider.autoDispose.family<T, Params>(
      (ref, params) {
        final controller = builder(ref, params);
        ref.onDispose(controller.dispose);
        return controller;
      },
    );
  }
}

TextEditingController createAutoDisposeTextEditingController(
  AutoDisposeProviderReference ref, {
  String? text,
  ValueChanged<TextEditingController>? listener,
}) {
  final controller = TextEditingController(text: text);

  if (listener != null) {
    controller.addListener(() => listener(controller));
  }

  ref.onDispose(controller.dispose);
  return controller;
}

extension PageControllerListenerExtension on AutoDisposeProviderReference {
  listenPageController({
    required void Function(PageController pageController) listener,
    required PageController pageController,
  }) {
    void _listener() => listener(pageController);
    pageController.addListener(_listener);
    onDispose(() {
      /// just in case check if hasClients
      if (pageController.hasClients) {
        pageController.removeListener(_listener);
      }
    });
  }
}

extension DisposableExtension on AutoDisposeProviderReference {
  handleDispose(IDisposable disposable) => onDispose(disposable.dispose);
}

abstract class IDisposable {
  void dispose();
}

extension ListenStreamInProviderExtension on AutoDisposeProviderReference {
  void listenStream<T>(Stream<T> stream, Function(T params) listener) {
    final subscription = stream.listen(listener);
    onDispose(subscription.cancel);
  }
}
