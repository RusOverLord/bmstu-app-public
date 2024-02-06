import 'package:freezed_annotation/freezed_annotation.dart';

import 'bmstu_id_onboarding_item.dart';

part 'bmstu_id_onboarding_list.freezed.dart';

@freezed
abstract class BmstuIdOnboardingList extends Iterable<BmstuIdOnboardingItem> with _$BmstuIdOnboardingList {
  const BmstuIdOnboardingList._();

  const factory BmstuIdOnboardingList({
    required List<BmstuIdOnboardingItem> items,
  }) = _OnboardingList;

  @override
  Iterator<BmstuIdOnboardingItem> get iterator => items.iterator;
}
