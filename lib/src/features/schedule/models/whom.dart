import 'package:freezed_annotation/freezed_annotation.dart';

part 'whom.freezed.dart';

@freezed
abstract class Whom with _$Whom {
  const Whom._();

  const factory Whom.group({
    required String uuid,
    required String lessonUuid,
    required String name,
    @Default('') String customName,
  }) = Group;

  const factory Whom.teacher({
    required String uuid,
    required String lessonUuid,
    required String name,
    @Default('') String customName,
  }) = Teacher;

  String get nameView => customName.isEmpty ? name : customName;

  bool get isGroup => maybeMap(
        group: (_) => true,
        orElse: () => false,
      );

  bool get isTeacher => maybeMap(
        teacher: (_) => true,
        orElse: () => false,
      );
}
