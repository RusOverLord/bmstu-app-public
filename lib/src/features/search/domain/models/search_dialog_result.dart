import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_dialog_result.freezed.dart';

@freezed
abstract class SearchDialogResult with _$SearchDialogResult {
  const SearchDialogResult._();

  const factory SearchDialogResult.found({
    required String scheduleUuid,
  }) = SearchDialogResultFound;

  const factory SearchDialogResult.cancel() = SearchDialogResultCancel;
}
