import 'dart:async';

import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/language.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/repositories/foreigners_repository.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/bloc/foreigners_simple_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final faqNotifierProvider = StateNotifierProvider.autoDispose<FAQNotifier,
    ForeignersSimpleNotifierState<FAQList>>(
  (ref) {
    final repository = ref.watch(foreignersRepositoryProvider);
    return FAQNotifierImpl(
      state: const ForeignersSimpleNotifierState.loading(),
      viewModelStream: repository.getFAQList(Language.ruRU),
    );
  },
);

abstract class FAQNotifier
    implements StateNotifier<ForeignersSimpleNotifierState<FAQList>> {}

class FAQNotifierImpl extends ForeignersSimpleNotifier<FAQList>
    implements FAQNotifier {
  FAQNotifierImpl({
    required ForeignersSimpleNotifierState<FAQList> state,
    required Stream<FAQList> viewModelStream,
  }) : super(
          state: state,
          viewModelStream: viewModelStream,
        );
}
