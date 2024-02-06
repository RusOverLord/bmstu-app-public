import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'onboarding_item_json.dart';

part 'onboarding_list_json.freezed.dart';
part 'onboarding_list_json.g.dart';

@freezed
abstract class OnboardingListJson with _$OnboardingListJson {
  const OnboardingListJson._();

  const factory OnboardingListJson({
    required List<OnboardingItemJson> items,
  }) = _OnboardingListJson;

  /// Generate Class from Map<String, dynamic>
  factory OnboardingListJson.fromJson(Map<String, dynamic> json) => _$OnboardingListJsonFromJson(json);

  BmstuIdOnboardingList toModel() {
    return BmstuIdOnboardingList(
      items: items.map((e) => e.toModel()).toList(),
    );
  }
}
