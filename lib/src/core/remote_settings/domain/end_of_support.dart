import 'package:freezed_annotation/freezed_annotation.dart';

part 'end_of_support.freezed.dart';
part 'end_of_support.g.dart';

@freezed
class EndOfSupport with _$EndOfSupport {
  const factory EndOfSupport({
    required String title,
    required String body,
    required String url,
  }) = _EndOfSupport;

  factory EndOfSupport.fromJson(Map<String, dynamic> json) => _$EndOfSupportFromJson(json);
}
