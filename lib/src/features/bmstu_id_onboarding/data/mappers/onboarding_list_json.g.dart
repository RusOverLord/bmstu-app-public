// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_list_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnboardingListJson _$$_OnboardingListJsonFromJson(
        Map<String, dynamic> json) =>
    _$_OnboardingListJson(
      items: (json['items'] as List<dynamic>)
          .map((e) => OnboardingItemJson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OnboardingListJsonToJson(
        _$_OnboardingListJson instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
