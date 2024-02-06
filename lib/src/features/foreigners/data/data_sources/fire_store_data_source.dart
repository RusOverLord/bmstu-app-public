import 'package:bbmstu_app/src/features/foreigners/data/models/contact_ird_list_mapper.dart';
import 'package:bbmstu_app/src/features/foreigners/data/models/faq_list_mapper.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foreignersFirestoreDataSourceProvider =
    Provider.autoDispose<ForeignersFirestoreDataSource>(
  (ref) {
    return _ForeignersFirestoreDataSourceImpl();
  },
);

abstract class ForeignersFirestoreDataSource {
  Stream<ContactIRDList> getContactIRDList(ContactsIRDParams params);

  Stream<FAQList> getFAQList(FAQParams params);
}

const _foreigners = 'foreigners';
const _lang = 'lang';
const _page = 'page';
const _contactsIrd = 'contacts_ird';
const _faq = 'faq';

class _ForeignersFirestoreDataSourceImpl
    implements ForeignersFirestoreDataSource {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Stream<ContactIRDList> getContactIRDList(ContactsIRDParams params) {
    final docQuery = firestore
        .collection(_foreigners)
        .where(_page, isEqualTo: _contactsIrd)
        .where(_lang, isEqualTo: params.language)
        .snapshots();
    return docQuery.map(
      (event) {
        final doc = event.docs.first;
        return ContactIRDListMapper.fromJSON(doc.data());
      },
    );
  }

  @override
  Stream<FAQList> getFAQList(FAQParams params) {
    final docQuery = firestore
        .collection(_foreigners)
        .where(_page, isEqualTo: _faq)
        .where(_lang, isEqualTo: params.language)
        .snapshots();
    return docQuery.map(
      (event) {
        final doc = event.docs.first;
        return FAQListMapper.fromJSON(doc.data());
      },
    );
  }
}

class ContactsIRDParams {
  final String language;

  const ContactsIRDParams({
    required this.language,
  });
}

class FAQParams {
  final String language;

  const FAQParams({
    required this.language,
  });
}
