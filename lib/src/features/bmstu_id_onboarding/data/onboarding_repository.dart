import 'package:bbmstu_app/src/features/bmstu_id_onboarding/data/mappers/mappers.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class IOnboardingRepository {
  Stream<BmstuIdOnboardingList> getOnboardingList();
}

class OnboardingRepository implements IOnboardingRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Stream<BmstuIdOnboardingList> getOnboardingList() {
    final docQuery = firestore.collection('bmstu_id_onboarding').where('lang', isEqualTo: 'ru-RU').snapshots();
    return docQuery.map(
          (event) {
        final doc = event.docs.first;
        return OnboardingListJson.fromJson(doc.data()).toModel();
      },
    );
  }
}
