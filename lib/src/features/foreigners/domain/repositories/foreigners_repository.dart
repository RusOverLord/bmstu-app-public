import 'package:bbmstu_app/src/features/foreigners/data/data_sources/fire_store_data_source.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/contact_ird_list.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/faq_list.dart';
import 'package:bbmstu_app/src/features/foreigners/domain/entities/language.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foreignersRepositoryProvider = Provider.autoDispose<ForeignersRepository>(
  (ref) {
    return _ForeignersRepositoryImpl(
      dataSource: ref.watch(foreignersFirestoreDataSourceProvider),
    );
  },
);

abstract class ForeignersRepository {
  Stream<ContactIRDList> getContactsIRD(Language language);

  Stream<FAQList> getFAQList(Language language);
}

class _ForeignersRepositoryImpl implements ForeignersRepository {
  final ForeignersFirestoreDataSource dataSource;

  _ForeignersRepositoryImpl({
    required this.dataSource,
  });

  @override
  Stream<ContactIRDList> getContactsIRD(Language language) {
    final params = ContactsIRDParams(
      language: language.enumToString(),
    );
    return dataSource.getContactIRDList(params);
  }

  @override
  Stream<FAQList> getFAQList(Language language) {
    final params = FAQParams(
      language: language.enumToString(),
    );
    return dataSource.getFAQList(params);
  }
}
