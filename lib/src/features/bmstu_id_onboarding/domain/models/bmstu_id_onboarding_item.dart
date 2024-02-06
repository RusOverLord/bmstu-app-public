import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmstu_id_onboarding_item.freezed.dart';

@freezed
class BmstuIdOnboardingItem with _$BmstuIdOnboardingItem {
  const factory BmstuIdOnboardingItem({
    required String description,
    required String title,
  }) = _OnboardingItem;
}
