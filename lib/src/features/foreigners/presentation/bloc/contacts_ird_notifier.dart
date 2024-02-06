import 'dart:async';

import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/language.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/repositories/foreigners_repository.dart';
import 'package:bbmstu_app/src/features/foreigners/presentation/bloc/foreigners_simple_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactsIRDNotifierProvider = StateNotifierProvider.autoDispose<
    ContactsIRDNotifier, ForeignersSimpleNotifierState<ContactIRDList>>(
  (ref) {
    final repository = ref.watch(foreignersRepositoryProvider);
    return ContactsIRDNotifierImpl(
      state: const ForeignersSimpleNotifierState.loading(),
      viewModelStream: repository.getContactsIRD(Language.ruRU),
    );
  },
);

abstract class ContactsIRDNotifier
    implements StateNotifier<ForeignersSimpleNotifierState<ContactIRDList>> {}

class ContactsIRDNotifierImpl extends ForeignersSimpleNotifier<ContactIRDList>
    implements ContactsIRDNotifier {
  ContactsIRDNotifierImpl({
    required ForeignersSimpleNotifierState<ContactIRDList> state,
    required Stream<ContactIRDList> viewModelStream,
  }) : super(
          state: state,
          viewModelStream: viewModelStream,
        );
}
