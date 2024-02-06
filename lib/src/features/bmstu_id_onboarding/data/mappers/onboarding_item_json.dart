import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_item_json.freezed.dart';

part 'onboarding_item_json.g.dart';

@freezed
class OnboardingItemJson with _$OnboardingItemJson {
  const OnboardingItemJson._();

  const factory OnboardingItemJson({
    required String description,
    required String title,
  }) = _OnboardingItemJson;

  /// Generate Class from Map<String, dynamic>
  factory OnboardingItemJson.fromJson(Map<String, dynamic> json) => _$OnboardingItemJsonFromJson(json);

  BmstuIdOnboardingItem toModel() {
    return BmstuIdOnboardingItem(
      title: title,
      description: description.replaceAll('\\n', '\n'),
    );
  }
}
