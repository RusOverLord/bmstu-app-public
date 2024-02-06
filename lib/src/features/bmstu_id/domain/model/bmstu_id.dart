import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmstu_id.freezed.dart';

@freezed
abstract class BmstuId with _$BmstuId {
  const BmstuId._();

  const factory BmstuId.empty() = BmstuIdEmpty;

  const factory BmstuId.data({
    required bool accessIsAllowed,
    required String qrString,
    required DateTime? expiredAt,
  }) = BmstuIdData;
}
